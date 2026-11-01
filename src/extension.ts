import * as vscode from 'vscode'
import { defineLogger } from 'reactive-vscode'
import { ensureTypeFile } from './download'
import { openTutorialPage } from './tutorial'
import { selectUseMirror } from './components/mirror-select'

const logger = defineLogger('Typed Miliastra')

export function activate(context: vscode.ExtensionContext) {
  context.subscriptions.push(
    vscode.commands.registerCommand('typed-miliastra-api.download-type-file', async (resource?: unknown) => {
      const useMirror = await selectUseMirror()
      if (useMirror === undefined) {
        logger.info('已取消下载：未选择下载源')
        return
      }

      await ensureTypeFile({ useMirror, resource })
    })
  )

  context.subscriptions.push(
    vscode.commands.registerCommand('typed-miliastra-api.open-tutorial', openTutorialPage)
  )
}

