import { createHash } from "node:crypto";
import { mkdir, readFile, rename, rm, writeFile } from "node:fs/promises";
import path from "node:path";

/** 计算 SHA-256 小写十六进制摘要 */
export function sha256(data: Uint8Array): string {
  return createHash('sha256').update(data).digest('hex').toLocaleLowerCase()
}

/** 读取文件，不存在时返回 `undefined` */
export async function readFileIfExists(filePath: string): Promise<Uint8Array | undefined> {
  try {
    return await readFile(filePath)
  } catch (error) {
    if ((error as NodeJS.ErrnoException).code === 'ENOENT') {
      return undefined
    }
    throw error
  }
}

/** 先写入临时文件再重命名，避免写入中断留下半截文件 */
export async function writeFileAtomically(targetPath: string, data: Uint8Array): Promise<void> {
  const tempPath = `${targetPath}.${process.pid}.tmp`
  await mkdir(path.dirname(targetPath), { recursive: true })
  await writeFile(tempPath, data)

  try {
    await rename(tempPath, targetPath)
  } catch (error) {
    await rm(tempPath, { force: true })
    throw error
  }
}