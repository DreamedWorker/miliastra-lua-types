export interface FileVersionEntry {
  /** 文件名，相对于仓库根目录 */
  file: string
  /** 内容摘要算法 */
  algorithm: 'sha256'
  /** 小写十六进制的 SHA-256 摘要 */
  hash: string
  /** 文件字节数 */
  size?: number
  /** 上游版本号，仅用于展示 */
  version?: string
  /** 文件更新时间（ISO 8601） */
  updatedAt?: string
}

/** 仓库版本清单的结构 */
export interface FileVersionManifest {
  /** 清单结构版本，目前为 1 */
  schemaVersion: 1
  /** 清单生成时间（ISO 8601） */
  generatedAt?: string
  /** 各文件的版本记录 */
  files: FileVersionEntry[]
}