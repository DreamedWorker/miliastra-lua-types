# 千星奇域 Lua 类型注解 (miliastra-lua-types)

原神「千星奇域」（**Miliastra Wonderland**，UGC）**客户端 Lua UI 脚本公共 API** 的 [LuaLS](https://luals.github.io/) 类型注解（LuaCATS）。

> 本仓库只提供**类型与签名**，不包含任何运行时实现（文件顶部为 `---@meta`）。

- 官方文档：<https://act.mihoyo.com/ys/ugc/tutorial/detail/mhtakr07vej4>

## 快速开始

1. 安装本插件及其依赖的 Lua 语言插件（`sumneko.lua` / LuaLS）；
2. 打开一个千星奇域关卡的 Lua 脚本根文件夹；
3. 在 VS Code 顶部的输入框中选择 `显示并运行命令`，然后输入 `下载或更新类型注解文件`，按提示继续即可完成配置。

> 注意：不要将 `mihoyo_client_ui_api.d.lua` 添加到千星沙箱中（即：不要对本文件创建脚本映射。）

运行环境是 **Lua 5.3**，如需与本工程一致的解析行为，可在工作区放一个 `.luarc.json`：

```json
{
  "runtime.version": "Lua 5.3",
  "workspace.checkThirdParty": false
}
```

> 注意：LuaLS 会加载工作区内所有含 `---@meta` 的文件。**同一个注解文件请只保留一份**，否则会出现重复定义、改了不生效的错觉。

## 注意事项

关于类型注解文件的覆盖范围等信息，参见[关于类型注解文件](./ABOUT.md)。

## 免责声明

本仓库为**非官方**的社区整理成果，相关名称与解释权归米哈游及官方文档所有。若与官方文档不一致，**以官方文档为准**。
