import { messageOf } from "../common"

/** 下载指定地址的内容 */
export async function fetchBytes(url: string): Promise<Uint8Array> {
  let response: Response
  try {
    response = await fetch(url, {
      headers: {
        'cache-control': 'no-cache'
      }
    })
  } catch (error) {
    throw new Error(`网络请求失败（${url}）：${messageOf(error)}`)
  }

  if (!response.ok) {
    throw new Error(`请求失败（HTTP ${response.status} ${response.statusText}）：${url}`)
  }

  return new Uint8Array(await response.arrayBuffer())
}