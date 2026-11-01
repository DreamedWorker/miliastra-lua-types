import * as vscode from 'vscode'
import { defineLogger } from 'reactive-vscode'
import { EnsureTypeFileOptions } from './types/download-option'
import { FileVersionManifest, FileVersionEntry } from './types/version-file'
import { readFileIfExists, sha256, writeFileAtomically } from './utils/files'
import { messageOf } from './common'
import { fetchManifest } from './utils/version-helper'
import { fetchBytes } from './utils/http-service'

const logger = defineLogger('Typed Miliastra')

export const TYPE_FILE_NAME = 'mihoyo_client_ui_api.d.lua'
export const VERSION_FILE_NAME = 'fileVersion.json'

const DEFAULT_BASE_URL = 'https://raw.githubusercontent.com/DreamedWorker/miliastra-lua-types/main'
const DEFAULT_MIRROR_BASE_URL = `https://gh-proxy.org/${DEFAULT_BASE_URL}`

const MIRROR_BASE_URL_SETTING = 'mirrorBaseUrl'

/**
 * 确保项目根目录下的类型注解文件存在且为最新版本。
 */
export async function ensureTypeFile(options: EnsureTypeFileOptions): Promise<void> {
  const projectRoot = resolveProjectRoot(options.resource)
  if (!projectRoot) {
    vscode.window.showErrorMessage('请先打开一个项目文件夹，再执行下载命令。')
    return
  }

  const target = vscode.Uri.joinPath(projectRoot, TYPE_FILE_NAME)
  const baseUrl = getBaseUrl(options.useMirror)

  try {
    await checkAndDownload(baseUrl, target, options.useMirror)
  } catch (error) {
    const message = messageOf(error)
    logger.error(message)
    vscode.window.showErrorMessage(`下载类型注解文件失败：${message}`)
  }
}

/** 检查本地文件并决定是否下载 */
async function checkAndDownload(baseUrl: string, target: vscode.Uri, useMirror: boolean): Promise<void> {
  const local = await readFileIfExists(target.fsPath)

  let manifest: FileVersionManifest | undefined
  try {
    manifest = await vscode.window.withProgress(
      { location: vscode.ProgressLocation.Notification, title: '正在获取类型注解文件的最新版本信息…' },
      () => fetchManifest(baseUrl)
    )
  } catch (error) {
    // 已有本地文件时，无法确认最新版本就不贸然覆盖
    if (local) {
      throw new Error(`无法获取最新版本信息，已跳过更新（${messageOf(error)}）`)
    }
    logger.warn(`首次下载前获取版本清单失败，将跳过完整性校验：${messageOf(error)}`)
  }

  const entry = manifest?.files.find((item) => item.file === TYPE_FILE_NAME)

  if (local) {
    if (!manifest) {
      throw new Error('无法获取最新版本信息，已跳过更新。')
    }
    if (!entry) {
      vscode.window.showWarningMessage(
        `远端 ${VERSION_FILE_NAME} 中没有 ${TYPE_FILE_NAME} 的记录，已跳过更新检查。`
      )
      return
    }

    const localHash = sha256(local)
    if (localHash === entry.hash) {
      logger.info(`类型注解文件已是最新版本：${target.fsPath}`)
      vscode.window.showInformationMessage(`类型注解文件已是最新版本${versionSuffix(entry)}。`)
      return
    }

    logger.info(`检测到新版本，本地哈希 ${localHash}，远端哈希 ${entry.hash}`)
  }

  const data = await vscode.window.withProgress(
    { location: vscode.ProgressLocation.Notification, title: `正在下载 ${TYPE_FILE_NAME}…` },
    async (progress) => {
      progress.report({ message: useMirror ? '正在通过镜像站下载…' : '正在从默认源下载…' })
      return fetchBytes(`${baseUrl}/${TYPE_FILE_NAME}`)
    }
  )

  const downloadedHash = sha256(data)
  if (entry) {
    if (entry.size !== undefined && data.byteLength !== entry.size) {
      throw new Error(`下载内容大小与 ${VERSION_FILE_NAME} 不一致（期望 ${entry.size} 字节，实际 ${data.byteLength} 字节）。`)
    }
    if (downloadedHash !== entry.hash) {
      throw new Error(`下载内容与 ${VERSION_FILE_NAME} 中的哈希不一致，镜像站可能尚未同步，请稍后重试。`)
    }
  }

  await writeFileAtomically(target.fsPath, data)
  logger.info(`类型注解文件已写入：${target.fsPath}`)

  const action = await vscode.window.showInformationMessage(
    `类型注解文件${local ? '已更新' : '已下载'}${versionSuffix(entry)}。`,
    '打开文件'
  )
  if (action === '打开文件') {
    await vscode.window.showTextDocument(target)
  }
}

/** 解析命令触发时所属的项目根目录：优先取资源所在的工作区文件夹，否则取第一个工作区文件夹 */
function resolveProjectRoot(resource?: unknown): vscode.Uri | undefined {
  if (resource instanceof vscode.Uri) {
    const folder = vscode.workspace.getWorkspaceFolder(resource)
    if (folder) {
      return folder.uri
    }
  }

  return vscode.workspace.workspaceFolders?.[0]?.uri
}

/** 根据用户选择获取下载源地址前缀 */
function getBaseUrl(useMirror: boolean): string {
  if (!useMirror) {
    return DEFAULT_BASE_URL
  }

  const configured = vscode.workspace
    .getConfiguration('typed-miliastra-api')
    .get<string>(MIRROR_BASE_URL_SETTING)
    ?.trim()

  return (configured || DEFAULT_MIRROR_BASE_URL).replace(/\/+$/, '')
}

function versionSuffix(entry: FileVersionEntry | undefined): string {
  return entry?.version ? `（${entry.version}）` : ''
}
