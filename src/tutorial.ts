import * as vscode from 'vscode'
import { defineLogger } from 'reactive-vscode'

const logger = defineLogger('Typed Miliastra')

const TUTORIAL_URL = 'https://act.mihoyo.com/ys/ugc/tutorial/detail/mhtakr07vej4'

const INTEGRATED_BROWSER_COMMAND = 'workbench.action.browser.open'
const SIMPLE_BROWSER_COMMAND = 'simpleBrowser.show'

export async function openTutorialPage(): Promise<void> {
  if (await commandExists(INTEGRATED_BROWSER_COMMAND)) {
    try {
      await vscode.commands.executeCommand(INTEGRATED_BROWSER_COMMAND, TUTORIAL_URL)
      return
    } catch (error) {
      logger.warn(`使用集成浏览器打开教程失败，将尝试其他方式：${messageOf(error)}`)
    }
  }

  if (await commandExists(SIMPLE_BROWSER_COMMAND)) {
    try {
      await vscode.commands.executeCommand(SIMPLE_BROWSER_COMMAND, TUTORIAL_URL)
      return
    } catch (error) {
      logger.warn(`使用 Simple Browser 打开教程失败，将改用系统浏览器：${messageOf(error)}`)
    }
  }

  await vscode.env.openExternal(vscode.Uri.parse(TUTORIAL_URL))
}

async function commandExists(command: string): Promise<boolean> {
  const commands = await vscode.commands.getCommands(true)
  return commands.includes(command)
}

function messageOf(error: unknown): string {
  return error instanceof Error ? error.message : String(error)
}
