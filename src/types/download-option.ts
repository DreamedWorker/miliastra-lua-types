export interface EnsureTypeFileOptions {
  useMirror: boolean
  /** 命令触发时传入的资源（如资源管理器中右键的文件），用于定位所属项目 */
  resource?: unknown
}