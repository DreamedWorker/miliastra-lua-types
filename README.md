# 千星奇域 Lua 类型注解 (miliastra-lua-types)

原神「千星奇域」（**Miliastra Wonderland**，UGC）**客户端 Lua UI 脚本公共 API** 的 [LuaLS](https://luals.github.io/) 类型注解（LuaCATS）。

在 VS Code + Lua 扩展（LuaLS）下打开本目录，即可获得 `game` / `script` / 各客户端控件类的**自动补全、参数签名、返回值类型与类型检查**。

> 本仓库只提供**类型与签名**，不包含任何运行时实现（文件顶部为 `---@meta`）。

- 官方文档：<https://act.mihoyo.com/ys/ugc/tutorial/detail/mhtakr07vej4>

## 目录结构

| 文件 | 说明 |
| --- | --- |
| `mihoyo_client_ui_api.d.lua` | 全部 API 的 LuaLS 注解；`---@meta` 定义文件，放在工作区内即自动加载 |
| `README.md` | 本文件 |

## 快速开始

1. 用 VS Code 打开**本文件夹**（不是单个 `.lua` 文件），或者将本仓库中的 `mihoyo_client_ui_api.d.lua` 添加到你的奇域脚本文件夹根目录中。
2. 安装 Lua 扩展（`sumneko.lua` / LuaLS）。
3. 新建一个 `.lua` 文件，敲 `game.` 或 `script:`，即可看到补全与类型。

> 注意：不要将 `mihoyo_client_ui_api.d.lua` 添加到千星沙箱中（即：不要对本文件创建脚本映射。）

运行环境是 **Lua 5.3**，如需与本工程一致的解析行为，可在工作区放一个 `.luarc.json`：

```json
{
  "runtime.version": "Lua 5.3",
  "workspace.checkThirdParty": false
}
```

> 注意：LuaLS 会加载工作区内所有含 `---@meta` 的文件。**同一个注解文件请只保留一份**，否则会出现重复定义、改了不生效的错觉。

## 覆盖范围

| 分类 | 数量 | 内容 |
| --- | ---: | --- |
| 脚本生命周期 | 7 | `OnInit` / `OnStart` / `OnEnable` / `OnDisable` / `OnUpdate` / `OnLevelUpdate` / `OnDestroy` |
| 全局函数 | 6 | `typeof` / `print` / `printerr` / `debug.traceback` / `math.isnan` / `math.isinf` |
| 全局变量 | 3 | `script: Script`、`Enum: Enum`、`game: Game` |
| `Color` | 3 | 构造函数 `Color(r, g, b, a?)` + `FromRGB` / `FromRGBA` / `ToRGBA` |
| `Script` | 7 | 逐帧开关、读取脚本参数、调用脚本内函数、服务器信号与自定义变量监听 |
| `game` | 26 | UI 与层级、输入与聚焦、补间动画 / 服务器信号 / 自定义变量、关卡 / 音效 / 本地化 |
| `Tween` | 11 | 缓动、相对值、播放控制、完成与循环回调 |
| `TweenSequence` | 15 | 串行 / 并行编排、插入回调、播放控制 |
| `ServerSignal` | 20 | 各类参数添加与发送 |
| `CursorEventData` | 3 | 光标坐标与位移 |
| 客户端控件 | 12 | `ClientUIBaseControl` + 11 个具体控件：图片 / 文本框 / 文本视窗 / 预设按钮 / 光标检测区域 / 网格视窗 / 按键提示 / 界面动效 / 全屏动效 / 容器节点 / 模板引用控件 |
| 枚举 | 27 类<br>394 值 | 含 `EaseType`、`ParamType`、`CursorEventType`、`ImageSource`、`KeyboardKeyCode`、`ControllerKeyCode`、`KeyEventType` 等，并标注了按键的**默认物理键** |

合计 161 个函数 / 回调、22 个只读字段。

## 运行环境限制（来自官方文档）

运行时为 **Lua 5.3**，以下标准库能力**不可用**：

- `string.dump`
- `io.*`
- `coroutine.*`
- `os.*`（仅 `os.time`、`os.date`、`os.clock`、`os.difftime` 可用）
- `debug.*`（仅 `debug.traceback` 可用）

额外补充：`math.isnan(n)`、`math.isinf(n)`。


## 注解约定

- **类与实例值**：类用 `---@class` 声明；若该类还要挂方法，会紧跟一行 `local X = {}`。LuaLS 需要这个值绑定，`function X:Method()` 才会挂到类上。
- **枚举**：成员类型写成各自的枚举类（如 `---@field Linear EnumEaseType`），而不是基类 `EnumItem`，这样 `Enum.EaseType.Linear` 才能直接传给 `easeType: EaseType`。
- **只读字段**：LuaLS 的 `@field` 不支持 `readonly`，因此统一写在注释里 —— `---@field id integer # 只读 · 运行时ID`。
- **无返回值的函数**：文档"返回值"列为 `—` 的函数不写 `---@return`（表示没有返回值），例如各类 `Set*` / `Add*` / `Remove*` / `SendSignal` / `Pause`。

## 关于 `any`

以下三处按官方文档本身就是 `any`，并非遗漏：

| 位置 | 文档说明 |
| --- | --- |
| `Script:GetParam(paramName)` | 读取脚本内变量，类型不定 |
| `game.GetGlobalCustomVariableValue(entityType, name)` | 支持列表 / 字典 / 结构体等复杂结构 |
| 字段 `Script.object` | 脚本所挂载的宿主对象 |

## 更新注解

正文由三类表格构成，逐条对应到 LuaLS 注解：

| 文档表格 | 表头 | 映射到 |
| --- | --- | --- |
| 字段 | 字段 / 类型 / 访问 / 说明 | `---@field 名称 类型 # 说明`；访问为"只读"时在注释前加 `只读 ·` |
| 方法 / 函数 / 构造函数 | 签名 / 返回值 / 说明 | `---@param` + `---@return` + 函数声明 |
| 枚举 | 枚举名 / 枚举值 / 说明 / 默认物理键 | `---@class EnumXxx` 的字段（默认物理键并入注释） |

更新后请自查：

1. `luac -p mihoyo_client_ui_api.d.lua` 语法通过；
2. LuaLS 对该文件无诊断、调用处类型正确；
3. 文件头部的 `修订` 行已更新。

## 免责声明

本仓库为**非官方**的社区整理成果，相关名称与解释权归米哈游及官方文档所有。若与官方文档不一致，**以官方文档为准**。
