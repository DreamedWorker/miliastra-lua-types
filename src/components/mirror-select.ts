import { QuickPickItem, window } from "vscode";

interface MirrorChoice extends QuickPickItem {
  readonly useMirror: boolean
}

const MIRROR_CHOICES: readonly MirrorChoice[] = [
  {
    label: '默认源',
    description: '直接从 Github 仓库地址下载',
    useMirror: false
  },
  {
    label: '镜像站',
    description: '通过镜像站下载',
    useMirror: true
  }
]

export async function selectUseMirror(): Promise<boolean | undefined> {
  const choice = await window.showQuickPick(MIRROR_CHOICES, {
    title: '下载或更新类型注解文件',
    placeHolder: '请选择下载源（是否使用镜像站）',
    ignoreFocusOut: true,
    matchOnDescription: true
  })

  return choice?.useMirror
}