import { rmSync } from 'node:fs'
import path from 'node:path'
import { defineConfig } from 'rolldown'

export default defineConfig({
  input: {
    'extension': './src/extension.ts'
  },
  output: {
    format: 'cjs',
    minify: true
  },
  transform: {
    define: {
      'process.env.NODE_ENV': '"production"'
    }
  },
  checks: {
    eval: false
  },
  external: ['vscode'],
  plugins: [
    {
      name: 'clean',
      buildStart() {
        rmSync(path.resolve(__dirname, './dist'), { recursive: true, force: true })
      }
    }
  ]
})