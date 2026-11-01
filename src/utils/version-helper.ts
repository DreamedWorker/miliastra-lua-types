import { isRecord } from "../common"
import { VERSION_FILE_NAME } from "../download"
import { FileVersionEntry, FileVersionManifest } from "../types/version-file"
import { fetchBytes } from "./http-service"

/** 获取并解析远端版本清单 */
export async function fetchManifest(baseUrl: string): Promise<FileVersionManifest> {
  const bytes = await fetchBytes(`${baseUrl}/${VERSION_FILE_NAME}`)
  const raw: unknown = JSON.parse(new TextDecoder().decode(bytes))
  return parseManifest(raw)
}

/** 校验并解析版本清单的结构 */
function parseManifest(raw: unknown): FileVersionManifest {
  if (!isRecord(raw)) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：根节点应为对象。`)
  }
  if (raw.schemaVersion !== undefined && raw.schemaVersion !== 1) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：不支持的 schemaVersion（${String(raw.schemaVersion)}）。`)
  }
  if (!Array.isArray(raw.files)) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：files 应为数组。`)
  }

  return {
    schemaVersion: 1,
    generatedAt: typeof raw.generatedAt === 'string' ? raw.generatedAt : undefined,
    files: raw.files.map((item, index) => parseEntry(item, index))
  }
}

/** 校验并解析单条文件记录 */
function parseEntry(raw: unknown, index: number): FileVersionEntry {
  const position = `files[${index}]`
  if (!isRecord(raw)) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position} 应为对象。`)
  }
  if (typeof raw.file !== 'string' || raw.file.length === 0) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.file 应为非空字符串。`)
  }
  if (raw.algorithm !== 'sha256') {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.algorithm 目前仅支持 "sha256"。`)
  }
  if (typeof raw.hash !== 'string' || !/^[0-9a-f]{64}$/i.test(raw.hash)) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.hash 应为 64 位十六进制字符串。`)
  }
  if (
    raw.size !== undefined &&
    (typeof raw.size !== 'number' || !Number.isInteger(raw.size) || raw.size < 0)
  ) {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.size 应为非负整数。`)
  }
  if (raw.version !== undefined && typeof raw.version !== 'string') {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.version 应为字符串。`)
  }
  if (raw.updatedAt !== undefined && typeof raw.updatedAt !== 'string') {
    throw new Error(`${VERSION_FILE_NAME} 格式错误：${position}.updatedAt 应为字符串。`)
  }

  return {
    file: raw.file,
    algorithm: 'sha256',
    hash: raw.hash.toLowerCase(),
    size: raw.size,
    version: raw.version,
    updatedAt: raw.updatedAt
  }
}