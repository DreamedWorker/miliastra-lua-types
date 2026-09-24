---@meta
---@diagnostic disable: duplicate-set-field, lowercase-global, missing-return
---
--- 客户端控件API文档 LuaLS 类型注解
--- 来源: https://act.mihoyo.com/ys/ugc/tutorial/detail/mhtakr07vej4
--- 修订: 2026-09-24 修正只读字段写法、补类方法的值绑定、枚举成员改为各自枚举类型（仍以同一文档为准）
--- 注意: 本文件只提供类型和签名，不实现运行时逻辑。

---@alias IntegerArray integer[]
---@alias NumberArray number[]
---@alias StringArray string[]

---@class ColorValue

---@class Game
game = {}

---@class EnumItem
---@field Name string # 只读 · 枚举值名称
---@field FullName string # 只读 · 枚举值完整名称
---@field EnumType string # 只读 · 枚举类型名称

---@class EnumEaseType : EnumItem
---@field Linear EnumEaseType # 线性
---@field InSine EnumEaseType # 正弦缓入
---@field OutSine EnumEaseType # 正弦缓出
---@field InOutSine EnumEaseType # 正弦缓入缓出
---@field InQuad EnumEaseType # 二次缓入
---@field OutQuad EnumEaseType # 二次缓出
---@field InOutQuad EnumEaseType # 二次缓入缓出
---@field InCubic EnumEaseType # 三次缓入
---@field OutCubic EnumEaseType # 三次缓出
---@field InOutCubic EnumEaseType # 三次缓入缓出
---@field InQuart EnumEaseType # 四次缓入
---@field OutQuart EnumEaseType # 四次缓出
---@field InOutQuart EnumEaseType # 四次缓入缓出
---@field InQuint EnumEaseType # 五次缓入
---@field OutQuint EnumEaseType # 五次缓出
---@field InOutQuint EnumEaseType # 五次缓入缓出
---@field InExpo EnumEaseType # 指数缓入
---@field OutExpo EnumEaseType # 指数缓出
---@field InOutExpo EnumEaseType # 指数缓入缓出
---@field InCirc EnumEaseType # 圆形缓入
---@field OutCirc EnumEaseType # 圆形缓出
---@field InOutCirc EnumEaseType # 圆形缓入缓出
---@field InBack EnumEaseType # 回弹缓入
---@field OutBack EnumEaseType # 回弹缓出
---@field InOutBack EnumEaseType # 回弹缓入缓出
---@field InElastic EnumEaseType # 弹性缓入
---@field OutElastic EnumEaseType # 弹性缓出
---@field InOutElastic EnumEaseType # 弹性缓入缓出
---@field InBounce EnumEaseType # 弹跳缓入
---@field OutBounce EnumEaseType # 弹跳缓出
---@field InOutBounce EnumEaseType # 弹跳缓入缓出
---@alias EaseType EnumEaseType

---@class EnumCustomVariableEntityType : EnumItem
---@field Level EnumCustomVariableEntityType # 关卡
---@field PlayerSelf EnumCustomVariableEntityType # 玩家自身
---@field AvatarSelf EnumCustomVariableEntityType # 角色自身
---@alias CustomVariableEntityType EnumCustomVariableEntityType

---@class EnumDevice : EnumItem
---@field KeyboardAndMouse EnumDevice # 键鼠
---@field Mobile EnumDevice # 移动端触屏
---@field Controller EnumDevice # 主机手柄
---@field MobileController EnumDevice # 移动端手柄
---@alias Device EnumDevice

---@class EnumStageMode : EnumItem
---@field Beyond EnumStageMode # 超限模式
---@field Classic EnumStageMode # 经典模式
---@alias StageMode EnumStageMode

---@class EnumLanguageType : EnumItem
---@field LanguageNone EnumLanguageType # 未指定
---@field LanguageEng EnumLanguageType # 英语
---@field LanguageChs EnumLanguageType # 简体中文
---@field LanguageCht EnumLanguageType # 繁体中文
---@field LanguageFra EnumLanguageType # 法语
---@field LanguageDeu EnumLanguageType # 德语
---@field LanguageSpa EnumLanguageType # 西班牙语
---@field LanguagePor EnumLanguageType # 葡萄牙语
---@field LanguageRus EnumLanguageType # 俄语
---@field LanguageJpn EnumLanguageType # 日语
---@field LanguageKor EnumLanguageType # 韩语
---@field LanguageTha EnumLanguageType # 泰语
---@field LanguageVie EnumLanguageType # 越南语
---@field LanguageInd EnumLanguageType # 印度尼西亚语
---@field LanguageTur EnumLanguageType # 土耳其语
---@field LanguageIta EnumLanguageType # 意大利语
---@alias LanguageType EnumLanguageType

---@class EnumParamType : EnumItem
---@field Entity EnumParamType # 实体
---@field EntityList EnumParamType # 实体列表
---@field Int EnumParamType # 整数
---@field IntList EnumParamType # 整数列表
---@field Bool EnumParamType # 布尔值
---@field BoolList EnumParamType # 布尔值列表
---@field Float EnumParamType # 浮点数
---@field FloatList EnumParamType # 浮点数列表
---@field String EnumParamType # 字符串
---@field StringList EnumParamType # 字符串列表
---@field Vector3 EnumParamType # 三维向量
---@field Vector3List EnumParamType # 三维向量列表
---@field Guid EnumParamType # GUID
---@field GuidList EnumParamType # GUID 列表
---@field ConfigId EnumParamType # 配置 ID
---@field PrefabId EnumParamType # 元件 ID
---@field ConfigIdList EnumParamType # 配置 ID 列表
---@field PrefabIdList EnumParamType # 元件 ID 列表
---@alias ParamType EnumParamType

---@class EnumCursorEventType : EnumItem
---@field CursorDown EnumCursorEventType # 光标按下
---@field CursorUp EnumCursorEventType # 光标抬起
---@field CursorEnter EnumCursorEventType # 光标进入检测区域
---@field CursorExit EnumCursorEventType # 光标离开检测区域
---@field CursorDrag EnumCursorEventType # 光标拖拽
---@field CursorBeginDrag EnumCursorEventType # 开始拖拽
---@field CursorEndDrag EnumCursorEventType # 结束拖拽
---@field CursorClick EnumCursorEventType # 完成点击
---@alias CursorEventType EnumCursorEventType

---@class EnumScrollDirection : EnumItem
---@field Horizontal EnumScrollDirection # 水平滚动
---@field Vertical EnumScrollDirection # 垂直滚动
---@alias ScrollDirection EnumScrollDirection

---@class EnumScrollLayoutConstraint : EnumItem
---@field AutoWrap EnumScrollLayoutConstraint # 自动换行布局
---@field Fixed EnumScrollLayoutConstraint # 固定行数或列数布局
---@alias ScrollLayoutConstraint EnumScrollLayoutConstraint

---@class EnumScrollAlignType : EnumItem
---@field Bottom EnumScrollAlignType # 底部对齐
---@field Center EnumScrollAlignType # 居中对齐
---@field Top EnumScrollAlignType # 顶部对齐
---@alias ScrollAlignType EnumScrollAlignType

---@class EnumControllerNavigationDir : EnumItem
---@field Up EnumControllerNavigationDir # 向上
---@field Down EnumControllerNavigationDir # 向下
---@field Left EnumControllerNavigationDir # 向左
---@field Right EnumControllerNavigationDir # 向右
---@alias ControllerNavigationDir EnumControllerNavigationDir

---@class EnumControllerNavigationEventType : EnumItem
---@field Confirm EnumControllerNavigationEventType # 确认
---@field Cancel EnumControllerNavigationEventType # 取消
---@field Focus EnumControllerNavigationEventType # 进入聚焦
---@field LostFocus EnumControllerNavigationEventType # 退出聚焦
---@field RightStickUp EnumControllerNavigationEventType # 右摇杆向上
---@field RightStickDown EnumControllerNavigationEventType # 右摇杆向下
---@field RightStickRight EnumControllerNavigationEventType # 右摇杆向右
---@field RightStickLeft EnumControllerNavigationEventType # 右摇杆向左
---@field LeftStickUp EnumControllerNavigationEventType # 左摇杆向上
---@field LeftStickDown EnumControllerNavigationEventType # 左摇杆向下
---@field LeftStickRight EnumControllerNavigationEventType # 左摇杆向右
---@field LeftStickLeft EnumControllerNavigationEventType # 左摇杆向左
---@alias ControllerNavigationEventType EnumControllerNavigationEventType

---@class EnumControllerNavigationMode : EnumItem
---@field None EnumControllerNavigationMode # 无导航
---@field NearestControl EnumControllerNavigationMode # 导航至最近控件
---@field Specified EnumControllerNavigationMode # 导航至指定控件
---@alias ControllerNavigationMode EnumControllerNavigationMode

---@class EnumTextHorizontalAlignment : EnumItem
---@field Left EnumTextHorizontalAlignment # 左对齐
---@field Middle EnumTextHorizontalAlignment # 水平居中
---@field Right EnumTextHorizontalAlignment # 右对齐
---@alias TextHorizontalAlignment EnumTextHorizontalAlignment

---@class EnumTextVerticalAlignment : EnumItem
---@field Top EnumTextVerticalAlignment # 顶部对齐
---@field Middle EnumTextVerticalAlignment # 垂直居中
---@field Bottom EnumTextVerticalAlignment # 底部对齐
---@alias TextVerticalAlignment EnumTextVerticalAlignment

---@class EnumImageType : EnumItem
---@field Basic EnumImageType # 基础
---@field Stretch EnumImageType # 拉伸
---@alias ImageType EnumImageType

---@class EnumImageSource : EnumItem
---@field StaticReference EnumImageSource # 静态引用
---@field Item EnumImageSource # 道具
---@field Equipment EnumImageSource # 装备
---@field Skill EnumImageSource # 技能
---@field UnitStatus EnumImageSource # 单位状态
---@field Faction EnumImageSource # 阵营
---@field Currency EnumImageSource # 货币
---@field Prefab EnumImageSource # 元件
---@alias ImageSource EnumImageSource

---@class EnumImageFillType : EnumItem
---@field Unused EnumImageFillType # 不使用填充
---@field Horizontal EnumImageFillType # 水平
---@field Vertical EnumImageFillType # 垂直
---@field Radial90 EnumImageFillType # 90度环绕
---@field Radial180 EnumImageFillType # 180度环绕
---@field Radial360 EnumImageFillType # 360度环绕
---@alias ImageFillType EnumImageFillType

---@class EnumImageFillHorizontalType : EnumItem
---@field Left EnumImageFillHorizontalType # 从左侧开始
---@field Right EnumImageFillHorizontalType # 从右侧开始
---@alias ImageFillHorizontalType EnumImageFillHorizontalType

---@class EnumImageFillVerticalType : EnumItem
---@field Bottom EnumImageFillVerticalType # 从底部开始
---@field Top EnumImageFillVerticalType # 从顶部开始
---@alias ImageFillVerticalType EnumImageFillVerticalType

---@class EnumImageFillRadial90Type : EnumItem
---@field BottomLeft EnumImageFillRadial90Type # 左下
---@field TopLeft EnumImageFillRadial90Type # 左上
---@field TopRight EnumImageFillRadial90Type # 右上
---@field BottomRight EnumImageFillRadial90Type # 右下
---@alias ImageFillRadial90Type EnumImageFillRadial90Type

---@class EnumImageFillRadialType : EnumItem
---@field Bottom EnumImageFillRadialType # 底部
---@field Left EnumImageFillRadialType # 左侧
---@field Top EnumImageFillRadialType # 顶部
---@field Right EnumImageFillRadialType # 右侧
---@alias ImageFillRadialType EnumImageFillRadialType

---@class EnumImageMaskSoftEdgeMode : EnumItem
---@field Percentage EnumImageMaskSoftEdgeMode # 按比例设置边缘羽化
---@field Pixel EnumImageMaskSoftEdgeMode # 按像素设置边缘羽化
---@alias ImageMaskSoftEdgeMode EnumImageMaskSoftEdgeMode

---@class EnumUIAnimationLayer : EnumItem
---@field AboveAllControls EnumUIAnimationLayer # 所有控件之上
---@field BelowAllControls EnumUIAnimationLayer # 所有控件之下
---@alias UIAnimationLayer EnumUIAnimationLayer

---@class EnumKeyboardKeyCode : EnumItem
---@field CraftspersonKey1 EnumKeyboardKeyCode # 奇匠按键1（默认物理键：1）
---@field CraftspersonKey2 EnumKeyboardKeyCode # 奇匠按键2（默认物理键：2）
---@field CraftspersonKey3 EnumKeyboardKeyCode # 奇匠按键3（默认物理键：3）
---@field CraftspersonKey4 EnumKeyboardKeyCode # 奇匠按键4（默认物理键：4）
---@field CraftspersonKey5 EnumKeyboardKeyCode # 奇匠按键5（默认物理键：5）
---@field CraftspersonKey6 EnumKeyboardKeyCode # 奇匠按键6（默认物理键：6）
---@field CraftspersonKey7 EnumKeyboardKeyCode # 奇匠按键7（默认物理键：7）
---@field CraftspersonKey8 EnumKeyboardKeyCode # 奇匠按键8（默认物理键：8）
---@field CraftspersonKey9 EnumKeyboardKeyCode # 奇匠按键9（默认物理键：9）
---@field CraftspersonKey10 EnumKeyboardKeyCode # 奇匠按键10（默认物理键：0）
---@field CraftspersonKey11 EnumKeyboardKeyCode # 奇匠按键11（默认物理键：U）
---@field CraftspersonKey12 EnumKeyboardKeyCode # 奇匠按键12（默认物理键：Z）
---@field CraftspersonKey13 EnumKeyboardKeyCode # 奇匠按键13（默认物理键：Y）
---@field CraftspersonKey14 EnumKeyboardKeyCode # 奇匠按键14（默认物理键：G）
---@field CraftspersonKey15 EnumKeyboardKeyCode # 奇匠按键15（默认物理键：H）
---@field CraftspersonKey16 EnumKeyboardKeyCode # 奇匠按键16（默认物理键：I）
---@field CraftspersonKey17 EnumKeyboardKeyCode # 奇匠按键17（默认物理键：O）
---@field CraftspersonKey18 EnumKeyboardKeyCode # 奇匠按键18（默认物理键：P）
---@field CraftspersonKey19 EnumKeyboardKeyCode # 奇匠按键19（默认物理键：J）
---@field CraftspersonKey20 EnumKeyboardKeyCode # 奇匠按键20（默认物理键：K）
---@field CraftspersonKey21 EnumKeyboardKeyCode # 奇匠按键21（默认物理键：L）
---@field CraftspersonKey22 EnumKeyboardKeyCode # 奇匠按键22（默认物理键：V）
---@field CraftspersonKey23 EnumKeyboardKeyCode # 奇匠按键23（默认物理键：F5）
---@field CraftspersonKey24 EnumKeyboardKeyCode # 奇匠按键24（默认物理键：F6）
---@field CraftspersonKey25 EnumKeyboardKeyCode # 奇匠按键25（默认物理键：F7）
---@field CraftspersonKey26 EnumKeyboardKeyCode # 奇匠按键26（默认物理键：F8）
---@field CraftspersonKey27 EnumKeyboardKeyCode # 奇匠按键27（默认物理键：F9）
---@field CraftspersonKey28 EnumKeyboardKeyCode # 奇匠按键28（默认物理键：F10）
---@field CraftspersonKey29 EnumKeyboardKeyCode # 奇匠按键29（默认物理键：`）
---@field CraftspersonKey30 EnumKeyboardKeyCode # 奇匠按键30（默认物理键：-）
---@field CraftspersonKey31 EnumKeyboardKeyCode # 奇匠按键31（默认物理键：=）
---@field CraftspersonKey32 EnumKeyboardKeyCode # 奇匠按键32（默认物理键：[）
---@field CraftspersonKey33 EnumKeyboardKeyCode # 奇匠按键33（默认物理键：,）
---@field CraftspersonKey34 EnumKeyboardKeyCode # 奇匠按键34（默认物理键：.）
---@field CraftspersonKey35 EnumKeyboardKeyCode # 奇匠按键35（默认物理键：/）
---@field CraftspersonKey36 EnumKeyboardKeyCode # 奇匠按键36（默认物理键：↑）
---@field CraftspersonKey37 EnumKeyboardKeyCode # 奇匠按键37（默认物理键：↓）
---@field CraftspersonKey38 EnumKeyboardKeyCode # 奇匠按键38（默认物理键：←）
---@field CraftspersonKey39 EnumKeyboardKeyCode # 奇匠按键39（默认物理键：→）
---@field CraftspersonKey40 EnumKeyboardKeyCode # 奇匠按键40（默认物理键：右Ctrl）
---@field CraftspersonKey41 EnumKeyboardKeyCode # 奇匠按键41（默认物理键：右Shift）
---@field CraftspersonKey42 EnumKeyboardKeyCode # 奇匠按键42（默认物理键：Backspace）
---@field CraftspersonKey43 EnumKeyboardKeyCode # 奇匠按键43（默认物理键：CapsLock）
---@field MoveForwardKey EnumKeyboardKeyCode # 向前移动（默认物理键：W）
---@field MoveBackwardKey EnumKeyboardKeyCode # 向后移动（默认物理键：S）
---@field MoveLeftKey EnumKeyboardKeyCode # 向左移动（默认物理键：A）
---@field MoveRightKey EnumKeyboardKeyCode # 向右移动（默认物理键：D）
---@field SwitchToWalkOrRunKey EnumKeyboardKeyCode # 切换行走/奔跑状态（默认物理键：左Ctrl）
---@field SprintKey EnumKeyboardKeyCode # 冲刺（默认物理键：鼠标右键）
---@field JumpKey EnumKeyboardKeyCode # 跳跃（默认物理键：Space）
---@field DropKey EnumKeyboardKeyCode # 落下（默认物理键：X）
---@field OpenShortcutWheelKey EnumKeyboardKeyCode # 呼出快捷轮盘（默认物理键：Tab）
---@field InteractKey EnumKeyboardKeyCode # 拾取/交互（默认物理键：F）
---@field NormalAttackKey EnumKeyboardKeyCode # 普通攻击（默认物理键：鼠标左键）
---@field CharacterSkill1Key EnumKeyboardKeyCode # 角色技能1（默认物理键：E）
---@field CharacterSkill2Key EnumKeyboardKeyCode # 角色技能2（默认物理键：Q）
---@field CharacterSkill3Key EnumKeyboardKeyCode # 角色技能3（默认物理键：R）
---@field CharacterSkill4Key EnumKeyboardKeyCode # 角色技能4（默认物理键：T）
---@field None EnumKeyboardKeyCode # 无
---@alias KeyboardKeyCode EnumKeyboardKeyCode

---@class EnumControllerKeyCode : EnumItem
---@field CraftspersonKey1 EnumControllerKeyCode # 奇匠按键1（默认物理键：十字键左）
---@field CraftspersonKey2 EnumControllerKeyCode # 奇匠按键2（默认物理键：十字键下）
---@field CraftspersonKey3 EnumControllerKeyCode # 奇匠按键3（默认物理键：LT）
---@field CraftspersonKey4 EnumControllerKeyCode # 奇匠按键4（默认物理键：LB + Y）
---@field CraftspersonKey5 EnumControllerKeyCode # 奇匠按键5（默认物理键：LB + X）
---@field CraftspersonKey6 EnumControllerKeyCode # 奇匠按键6（默认物理键：LB + A）
---@field CraftspersonKey7 EnumControllerKeyCode # 奇匠按键7（默认物理键：LB + 十字键上）
---@field CraftspersonKey8 EnumControllerKeyCode # 奇匠按键8（默认物理键：LB + 十字键右）
---@field CraftspersonKey9 EnumControllerKeyCode # 奇匠按键9（默认物理键：LB + 十字键左）
---@field CraftspersonKey10 EnumControllerKeyCode # 奇匠按键10（默认物理键：LB + 十字键下）
---@field CraftspersonKey11 EnumControllerKeyCode # 奇匠按键11（默认物理键：LB + RB）
---@field CraftspersonKey12 EnumControllerKeyCode # 奇匠按键12（默认物理键：LB + LT）
---@field CraftspersonKey13 EnumControllerKeyCode # 奇匠按键13（默认物理键：LB + RT）
---@field CraftspersonKey14 EnumControllerKeyCode # 奇匠按键14（默认物理键：LB + LS(按下)）
---@field SprintKey EnumControllerKeyCode # 冲刺（默认物理键：RB）
---@field JumpKey EnumControllerKeyCode # 跳跃（默认物理键：A）
---@field InteractKey EnumControllerKeyCode # 拾取/交互（默认物理键：X）
---@field NormalAttackKey EnumControllerKeyCode # 普通攻击（默认物理键：B）
---@field CharacterSkill1Key EnumControllerKeyCode # 角色技能1（默认物理键：RT）
---@field CharacterSkill2Key EnumControllerKeyCode # 角色技能2（默认物理键：Y）
---@field CharacterSkill3Key EnumControllerKeyCode # 角色技能3（默认物理键：十字键上）
---@field CharacterSkill4Key EnumControllerKeyCode # 角色技能4（默认物理键：十字键右）
---@field MenuConfirmKey EnumControllerKeyCode # 菜单确认（默认物理键：—（由手柄导航配置决定））
---@field MenuBackKey EnumControllerKeyCode # 菜单返回（默认物理键：—（由手柄导航配置决定））
---@field None EnumControllerKeyCode # 无
---@alias ControllerKeyCode EnumControllerKeyCode

---@class EnumKeyEventType : EnumItem
---@field KeyboardCraftspersonKey1Down EnumKeyEventType # 键鼠：奇匠按键1（按下）（默认物理键：1）
---@field KeyboardCraftspersonKey2Down EnumKeyEventType # 键鼠：奇匠按键2（按下）（默认物理键：2）
---@field KeyboardCraftspersonKey3Down EnumKeyEventType # 键鼠：奇匠按键3（按下）（默认物理键：3）
---@field KeyboardCraftspersonKey4Down EnumKeyEventType # 键鼠：奇匠按键4（按下）（默认物理键：4）
---@field KeyboardCraftspersonKey5Down EnumKeyEventType # 键鼠：奇匠按键5（按下）（默认物理键：5）
---@field KeyboardCraftspersonKey6Down EnumKeyEventType # 键鼠：奇匠按键6（按下）（默认物理键：6）
---@field KeyboardCraftspersonKey7Down EnumKeyEventType # 键鼠：奇匠按键7（按下）（默认物理键：7）
---@field KeyboardCraftspersonKey8Down EnumKeyEventType # 键鼠：奇匠按键8（按下）（默认物理键：8）
---@field KeyboardCraftspersonKey9Down EnumKeyEventType # 键鼠：奇匠按键9（按下）（默认物理键：9）
---@field KeyboardCraftspersonKey10Down EnumKeyEventType # 键鼠：奇匠按键10（按下）（默认物理键：0）
---@field KeyboardCraftspersonKey11Down EnumKeyEventType # 键鼠：奇匠按键11（按下）（默认物理键：U）
---@field KeyboardCraftspersonKey12Down EnumKeyEventType # 键鼠：奇匠按键12（按下）（默认物理键：Z）
---@field KeyboardCraftspersonKey13Down EnumKeyEventType # 键鼠：奇匠按键13（按下）（默认物理键：Y）
---@field KeyboardCraftspersonKey14Down EnumKeyEventType # 键鼠：奇匠按键14（按下）（默认物理键：G）
---@field KeyboardCraftspersonKey15Down EnumKeyEventType # 键鼠：奇匠按键15（按下）（默认物理键：H）
---@field KeyboardCraftspersonKey16Down EnumKeyEventType # 键鼠：奇匠按键16（按下）（默认物理键：I）
---@field KeyboardCraftspersonKey17Down EnumKeyEventType # 键鼠：奇匠按键17（按下）（默认物理键：O）
---@field KeyboardCraftspersonKey18Down EnumKeyEventType # 键鼠：奇匠按键18（按下）（默认物理键：P）
---@field KeyboardCraftspersonKey19Down EnumKeyEventType # 键鼠：奇匠按键19（按下）（默认物理键：J）
---@field KeyboardCraftspersonKey20Down EnumKeyEventType # 键鼠：奇匠按键20（按下）（默认物理键：K）
---@field KeyboardCraftspersonKey21Down EnumKeyEventType # 键鼠：奇匠按键21（按下）（默认物理键：L）
---@field KeyboardCraftspersonKey22Down EnumKeyEventType # 键鼠：奇匠按键22（按下）（默认物理键：V）
---@field KeyboardCraftspersonKey23Down EnumKeyEventType # 键鼠：奇匠按键23（按下）（默认物理键：F5）
---@field KeyboardCraftspersonKey24Down EnumKeyEventType # 键鼠：奇匠按键24（按下）（默认物理键：F6）
---@field KeyboardCraftspersonKey25Down EnumKeyEventType # 键鼠：奇匠按键25（按下）（默认物理键：F7）
---@field KeyboardCraftspersonKey26Down EnumKeyEventType # 键鼠：奇匠按键26（按下）（默认物理键：F8）
---@field KeyboardCraftspersonKey27Down EnumKeyEventType # 键鼠：奇匠按键27（按下）（默认物理键：F9）
---@field KeyboardCraftspersonKey28Down EnumKeyEventType # 键鼠：奇匠按键28（按下）（默认物理键：F10）
---@field KeyboardCraftspersonKey29Down EnumKeyEventType # 键鼠：奇匠按键29（按下）（默认物理键：`）
---@field KeyboardCraftspersonKey30Down EnumKeyEventType # 键鼠：奇匠按键30（按下）（默认物理键：-）
---@field KeyboardCraftspersonKey31Down EnumKeyEventType # 键鼠：奇匠按键31（按下）（默认物理键：=）
---@field KeyboardCraftspersonKey32Down EnumKeyEventType # 键鼠：奇匠按键32（按下）（默认物理键：[）
---@field KeyboardCraftspersonKey33Down EnumKeyEventType # 键鼠：奇匠按键33（按下）（默认物理键：,）
---@field KeyboardCraftspersonKey34Down EnumKeyEventType # 键鼠：奇匠按键34（按下）（默认物理键：.）
---@field KeyboardCraftspersonKey35Down EnumKeyEventType # 键鼠：奇匠按键35（按下）（默认物理键：/）
---@field KeyboardCraftspersonKey36Down EnumKeyEventType # 键鼠：奇匠按键36（按下）（默认物理键：↑）
---@field KeyboardCraftspersonKey37Down EnumKeyEventType # 键鼠：奇匠按键37（按下）（默认物理键：↓）
---@field KeyboardCraftspersonKey38Down EnumKeyEventType # 键鼠：奇匠按键38（按下）（默认物理键：←）
---@field KeyboardCraftspersonKey39Down EnumKeyEventType # 键鼠：奇匠按键39（按下）（默认物理键：→）
---@field KeyboardCraftspersonKey40Down EnumKeyEventType # 键鼠：奇匠按键40（按下）（默认物理键：右Ctrl）
---@field KeyboardCraftspersonKey41Down EnumKeyEventType # 键鼠：奇匠按键41（按下）（默认物理键：右Shift）
---@field KeyboardCraftspersonKey42Down EnumKeyEventType # 键鼠：奇匠按键42（按下）（默认物理键：Backspace）
---@field KeyboardCraftspersonKey43Down EnumKeyEventType # 键鼠：奇匠按键43（按下）（默认物理键：CapsLock）
---@field KeyboardMoveForwardKeyDown EnumKeyEventType # 键鼠：向前移动（按下）（默认物理键：W）
---@field KeyboardMoveBackwardKeyDown EnumKeyEventType # 键鼠：向后移动（按下）（默认物理键：S）
---@field KeyboardMoveLeftKeyDown EnumKeyEventType # 键鼠：向左移动（按下）（默认物理键：A）
---@field KeyboardMoveRightKeyDown EnumKeyEventType # 键鼠：向右移动（按下）（默认物理键：D）
---@field KeyboardSwitchToWalkOrRunKeyDown EnumKeyEventType # 键鼠：切换行走/奔跑状态（按下）（默认物理键：左Ctrl）
---@field KeyboardSprintKeyDown EnumKeyEventType # 键鼠：冲刺（按下）（默认物理键：鼠标右键）
---@field KeyboardJumpKeyDown EnumKeyEventType # 键鼠：跳跃（按下）（默认物理键：Space）
---@field KeyboardDropKeyDown EnumKeyEventType # 键鼠：落下（按下）（默认物理键：X）
---@field KeyboardOpenShortcutWheelKeyDown EnumKeyEventType # 键鼠：呼出快捷轮盘（按下）（默认物理键：Tab）
---@field KeyboardInteractKeyDown EnumKeyEventType # 键鼠：拾取/交互（按下）（默认物理键：F）
---@field KeyboardNormalAttackKeyDown EnumKeyEventType # 键鼠：普通攻击（按下）（默认物理键：鼠标左键）
---@field KeyboardCharacterSkill1KeyDown EnumKeyEventType # 键鼠：角色技能1（按下）（默认物理键：E）
---@field KeyboardCharacterSkill2KeyDown EnumKeyEventType # 键鼠：角色技能2（按下）（默认物理键：Q）
---@field KeyboardCharacterSkill3KeyDown EnumKeyEventType # 键鼠：角色技能3（按下）（默认物理键：R）
---@field KeyboardCharacterSkill4KeyDown EnumKeyEventType # 键鼠：角色技能4（按下）（默认物理键：T）
---@field KeyboardCraftspersonKey1Up EnumKeyEventType # 键鼠：奇匠按键1（抬起）（默认物理键：1）
---@field KeyboardCraftspersonKey2Up EnumKeyEventType # 键鼠：奇匠按键2（抬起）（默认物理键：2）
---@field KeyboardCraftspersonKey3Up EnumKeyEventType # 键鼠：奇匠按键3（抬起）（默认物理键：3）
---@field KeyboardCraftspersonKey4Up EnumKeyEventType # 键鼠：奇匠按键4（抬起）（默认物理键：4）
---@field KeyboardCraftspersonKey5Up EnumKeyEventType # 键鼠：奇匠按键5（抬起）（默认物理键：5）
---@field KeyboardCraftspersonKey6Up EnumKeyEventType # 键鼠：奇匠按键6（抬起）（默认物理键：6）
---@field KeyboardCraftspersonKey7Up EnumKeyEventType # 键鼠：奇匠按键7（抬起）（默认物理键：7）
---@field KeyboardCraftspersonKey8Up EnumKeyEventType # 键鼠：奇匠按键8（抬起）（默认物理键：8）
---@field KeyboardCraftspersonKey9Up EnumKeyEventType # 键鼠：奇匠按键9（抬起）（默认物理键：9）
---@field KeyboardCraftspersonKey10Up EnumKeyEventType # 键鼠：奇匠按键10（抬起）（默认物理键：0）
---@field KeyboardCraftspersonKey11Up EnumKeyEventType # 键鼠：奇匠按键11（抬起）（默认物理键：U）
---@field KeyboardCraftspersonKey12Up EnumKeyEventType # 键鼠：奇匠按键12（抬起）（默认物理键：Z）
---@field KeyboardCraftspersonKey13Up EnumKeyEventType # 键鼠：奇匠按键13（抬起）（默认物理键：Y）
---@field KeyboardCraftspersonKey14Up EnumKeyEventType # 键鼠：奇匠按键14（抬起）（默认物理键：G）
---@field KeyboardCraftspersonKey15Up EnumKeyEventType # 键鼠：奇匠按键15（抬起）（默认物理键：H）
---@field KeyboardCraftspersonKey16Up EnumKeyEventType # 键鼠：奇匠按键16（抬起）（默认物理键：I）
---@field KeyboardCraftspersonKey17Up EnumKeyEventType # 键鼠：奇匠按键17（抬起）（默认物理键：O）
---@field KeyboardCraftspersonKey18Up EnumKeyEventType # 键鼠：奇匠按键18（抬起）（默认物理键：P）
---@field KeyboardCraftspersonKey19Up EnumKeyEventType # 键鼠：奇匠按键19（抬起）（默认物理键：J）
---@field KeyboardCraftspersonKey20Up EnumKeyEventType # 键鼠：奇匠按键20（抬起）（默认物理键：K）
---@field KeyboardCraftspersonKey21Up EnumKeyEventType # 键鼠：奇匠按键21（抬起）（默认物理键：L）
---@field KeyboardCraftspersonKey22Up EnumKeyEventType # 键鼠：奇匠按键22（抬起）（默认物理键：V）
---@field KeyboardCraftspersonKey23Up EnumKeyEventType # 键鼠：奇匠按键23（抬起）（默认物理键：F5）
---@field KeyboardCraftspersonKey24Up EnumKeyEventType # 键鼠：奇匠按键24（抬起）（默认物理键：F6）
---@field KeyboardCraftspersonKey25Up EnumKeyEventType # 键鼠：奇匠按键25（抬起）（默认物理键：F7）
---@field KeyboardCraftspersonKey26Up EnumKeyEventType # 键鼠：奇匠按键26（抬起）（默认物理键：F8）
---@field KeyboardCraftspersonKey27Up EnumKeyEventType # 键鼠：奇匠按键27（抬起）（默认物理键：F9）
---@field KeyboardCraftspersonKey28Up EnumKeyEventType # 键鼠：奇匠按键28（抬起）（默认物理键：F10）
---@field KeyboardCraftspersonKey29Up EnumKeyEventType # 键鼠：奇匠按键29（抬起）（默认物理键：`）
---@field KeyboardCraftspersonKey30Up EnumKeyEventType # 键鼠：奇匠按键30（抬起）（默认物理键：-）
---@field KeyboardCraftspersonKey31Up EnumKeyEventType # 键鼠：奇匠按键31（抬起）（默认物理键：=）
---@field KeyboardCraftspersonKey32Up EnumKeyEventType # 键鼠：奇匠按键32（抬起）（默认物理键：[）
---@field KeyboardCraftspersonKey33Up EnumKeyEventType # 键鼠：奇匠按键33（抬起）（默认物理键：,）
---@field KeyboardCraftspersonKey34Up EnumKeyEventType # 键鼠：奇匠按键34（抬起）（默认物理键：.）
---@field KeyboardCraftspersonKey35Up EnumKeyEventType # 键鼠：奇匠按键35（抬起）（默认物理键：/）
---@field KeyboardCraftspersonKey36Up EnumKeyEventType # 键鼠：奇匠按键36（抬起）（默认物理键：↑）
---@field KeyboardCraftspersonKey37Up EnumKeyEventType # 键鼠：奇匠按键37（抬起）（默认物理键：↓）
---@field KeyboardCraftspersonKey38Up EnumKeyEventType # 键鼠：奇匠按键38（抬起）（默认物理键：←）
---@field KeyboardCraftspersonKey39Up EnumKeyEventType # 键鼠：奇匠按键39（抬起）（默认物理键：→）
---@field KeyboardCraftspersonKey40Up EnumKeyEventType # 键鼠：奇匠按键40（抬起）（默认物理键：右Ctrl）
---@field KeyboardCraftspersonKey41Up EnumKeyEventType # 键鼠：奇匠按键41（抬起）（默认物理键：右Shift）
---@field KeyboardCraftspersonKey42Up EnumKeyEventType # 键鼠：奇匠按键42（抬起）（默认物理键：Backspace）
---@field KeyboardCraftspersonKey43Up EnumKeyEventType # 键鼠：奇匠按键43（抬起）（默认物理键：CapsLock）
---@field KeyboardMoveForwardKeyUp EnumKeyEventType # 键鼠：向前移动（抬起）（默认物理键：W）
---@field KeyboardMoveBackwardKeyUp EnumKeyEventType # 键鼠：向后移动（抬起）（默认物理键：S）
---@field KeyboardMoveLeftKeyUp EnumKeyEventType # 键鼠：向左移动（抬起）（默认物理键：A）
---@field KeyboardMoveRightKeyUp EnumKeyEventType # 键鼠：向右移动（抬起）（默认物理键：D）
---@field KeyboardSwitchToWalkOrRunKeyUp EnumKeyEventType # 键鼠：切换行走/奔跑状态（抬起）（默认物理键：左Ctrl）
---@field KeyboardSprintKeyUp EnumKeyEventType # 键鼠：冲刺（抬起）（默认物理键：鼠标右键）
---@field KeyboardJumpKeyUp EnumKeyEventType # 键鼠：跳跃（抬起）（默认物理键：Space）
---@field KeyboardDropKeyUp EnumKeyEventType # 键鼠：落下（抬起）（默认物理键：X）
---@field KeyboardOpenShortcutWheelKeyUp EnumKeyEventType # 键鼠：呼出快捷轮盘（抬起）（默认物理键：Tab）
---@field KeyboardInteractKeyUp EnumKeyEventType # 键鼠：拾取/交互（抬起）（默认物理键：F）
---@field KeyboardNormalAttackKeyUp EnumKeyEventType # 键鼠：普通攻击（抬起）（默认物理键：鼠标左键）
---@field KeyboardCharacterSkill1KeyUp EnumKeyEventType # 键鼠：角色技能1（抬起）（默认物理键：E）
---@field KeyboardCharacterSkill2KeyUp EnumKeyEventType # 键鼠：角色技能2（抬起）（默认物理键：Q）
---@field KeyboardCharacterSkill3KeyUp EnumKeyEventType # 键鼠：角色技能3（抬起）（默认物理键：R）
---@field KeyboardCharacterSkill4KeyUp EnumKeyEventType # 键鼠：角色技能4（抬起）（默认物理键：T）
---@field ControllerCraftspersonKey1Down EnumKeyEventType # 手柄：奇匠按键1（按下）（默认物理键：十字键左）
---@field ControllerCraftspersonKey2Down EnumKeyEventType # 手柄：奇匠按键2（按下）（默认物理键：十字键下）
---@field ControllerCraftspersonKey3Down EnumKeyEventType # 手柄：奇匠按键3（按下）（默认物理键：LT）
---@field ControllerCraftspersonKey4Down EnumKeyEventType # 手柄：奇匠按键4（按下）（默认物理键：LB + Y）
---@field ControllerCraftspersonKey5Down EnumKeyEventType # 手柄：奇匠按键5（按下）（默认物理键：LB + X）
---@field ControllerCraftspersonKey6Down EnumKeyEventType # 手柄：奇匠按键6（按下）（默认物理键：LB + A）
---@field ControllerCraftspersonKey7Down EnumKeyEventType # 手柄：奇匠按键7（按下）（默认物理键：LB + 十字键上）
---@field ControllerCraftspersonKey8Down EnumKeyEventType # 手柄：奇匠按键8（按下）（默认物理键：LB + 十字键右）
---@field ControllerCraftspersonKey9Down EnumKeyEventType # 手柄：奇匠按键9（按下）（默认物理键：LB + 十字键左）
---@field ControllerCraftspersonKey10Down EnumKeyEventType # 手柄：奇匠按键10（按下）（默认物理键：LB + 十字键下）
---@field ControllerCraftspersonKey11Down EnumKeyEventType # 手柄：奇匠按键11（按下）（默认物理键：LB + RB）
---@field ControllerCraftspersonKey12Down EnumKeyEventType # 手柄：奇匠按键12（按下）（默认物理键：LB + LT）
---@field ControllerCraftspersonKey13Down EnumKeyEventType # 手柄：奇匠按键13（按下）（默认物理键：LB + RT）
---@field ControllerCraftspersonKey14Down EnumKeyEventType # 手柄：奇匠按键14（按下）（默认物理键：LB + LS(按下)）
---@field ControllerSprintKeyDown EnumKeyEventType # 手柄：冲刺（按下）（默认物理键：RB）
---@field ControllerJumpKeyDown EnumKeyEventType # 手柄：跳跃（按下）（默认物理键：A）
---@field ControllerInteractKeyDown EnumKeyEventType # 手柄：拾取/交互（按下）（默认物理键：X）
---@field ControllerNormalAttackKeyDown EnumKeyEventType # 手柄：普通攻击（按下）（默认物理键：B）
---@field ControllerCharacterSkill1KeyDown EnumKeyEventType # 手柄：角色技能1（按下）（默认物理键：RT）
---@field ControllerCharacterSkill2KeyDown EnumKeyEventType # 手柄：角色技能2（按下）（默认物理键：Y）
---@field ControllerCharacterSkill3KeyDown EnumKeyEventType # 手柄：角色技能3（按下）（默认物理键：十字键上）
---@field ControllerCharacterSkill4KeyDown EnumKeyEventType # 手柄：角色技能4（按下）（默认物理键：十字键右）
---@field ControllerMenuConfirmKeyDown EnumKeyEventType # 手柄：菜单确认（按下）（默认物理键：—（由手柄导航配置决定））
---@field ControllerMenuBackKeyDown EnumKeyEventType # 手柄：菜单返回（按下）（默认物理键：—（由手柄导航配置决定））
---@field ControllerCraftspersonKey1Up EnumKeyEventType # 手柄：奇匠按键1（抬起）（默认物理键：十字键左）
---@field ControllerCraftspersonKey2Up EnumKeyEventType # 手柄：奇匠按键2（抬起）（默认物理键：十字键下）
---@field ControllerCraftspersonKey3Up EnumKeyEventType # 手柄：奇匠按键3（抬起）（默认物理键：LT）
---@field ControllerCraftspersonKey4Up EnumKeyEventType # 手柄：奇匠按键4（抬起）（默认物理键：LB + Y）
---@field ControllerCraftspersonKey5Up EnumKeyEventType # 手柄：奇匠按键5（抬起）（默认物理键：LB + X）
---@field ControllerCraftspersonKey6Up EnumKeyEventType # 手柄：奇匠按键6（抬起）（默认物理键：LB + A）
---@field ControllerCraftspersonKey7Up EnumKeyEventType # 手柄：奇匠按键7（抬起）（默认物理键：LB + 十字键上）
---@field ControllerCraftspersonKey8Up EnumKeyEventType # 手柄：奇匠按键8（抬起）（默认物理键：LB + 十字键右）
---@field ControllerCraftspersonKey9Up EnumKeyEventType # 手柄：奇匠按键9（抬起）（默认物理键：LB + 十字键左）
---@field ControllerCraftspersonKey10Up EnumKeyEventType # 手柄：奇匠按键10（抬起）（默认物理键：LB + 十字键下）
---@field ControllerCraftspersonKey11Up EnumKeyEventType # 手柄：奇匠按键11（抬起）（默认物理键：LB + RB）
---@field ControllerCraftspersonKey12Up EnumKeyEventType # 手柄：奇匠按键12（抬起）（默认物理键：LB + LT）
---@field ControllerCraftspersonKey13Up EnumKeyEventType # 手柄：奇匠按键13（抬起）（默认物理键：LB + RT）
---@field ControllerCraftspersonKey14Up EnumKeyEventType # 手柄：奇匠按键14（抬起）（默认物理键：LB + LS(按下)）
---@field ControllerSprintKeyUp EnumKeyEventType # 手柄：冲刺（抬起）（默认物理键：RB）
---@field ControllerJumpKeyUp EnumKeyEventType # 手柄：跳跃（抬起）（默认物理键：A）
---@field ControllerInteractKeyUp EnumKeyEventType # 手柄：拾取/交互（抬起）（默认物理键：X）
---@field ControllerNormalAttackKeyUp EnumKeyEventType # 手柄：普通攻击（抬起）（默认物理键：B）
---@field ControllerCharacterSkill1KeyUp EnumKeyEventType # 手柄：角色技能1（抬起）（默认物理键：RT）
---@field ControllerCharacterSkill2KeyUp EnumKeyEventType # 手柄：角色技能2（抬起）（默认物理键：Y）
---@field ControllerCharacterSkill3KeyUp EnumKeyEventType # 手柄：角色技能3（抬起）（默认物理键：十字键上）
---@field ControllerCharacterSkill4KeyUp EnumKeyEventType # 手柄：角色技能4（抬起）（默认物理键：十字键右）
---@field ControllerMenuConfirmKeyUp EnumKeyEventType # 手柄：菜单确认（抬起）（默认物理键：—（由手柄导航配置决定））
---@field ControllerMenuBackKeyUp EnumKeyEventType # 手柄：菜单返回（抬起）（默认物理键：—（由手柄导航配置决定））
---@alias KeyEventType EnumKeyEventType

---@class Enum
---@field EaseType EnumEaseType
---@field CustomVariableEntityType EnumCustomVariableEntityType
---@field Device EnumDevice
---@field StageMode EnumStageMode
---@field LanguageType EnumLanguageType
---@field ParamType EnumParamType
---@field CursorEventType EnumCursorEventType
---@field ScrollDirection EnumScrollDirection
---@field ScrollLayoutConstraint EnumScrollLayoutConstraint
---@field ScrollAlignType EnumScrollAlignType
---@field ControllerNavigationDir EnumControllerNavigationDir
---@field ControllerNavigationEventType EnumControllerNavigationEventType
---@field ControllerNavigationMode EnumControllerNavigationMode
---@field TextHorizontalAlignment EnumTextHorizontalAlignment
---@field TextVerticalAlignment EnumTextVerticalAlignment
---@field ImageType EnumImageType
---@field ImageSource EnumImageSource
---@field ImageFillType EnumImageFillType
---@field ImageFillHorizontalType EnumImageFillHorizontalType
---@field ImageFillVerticalType EnumImageFillVerticalType
---@field ImageFillRadial90Type EnumImageFillRadial90Type
---@field ImageFillRadialType EnumImageFillRadialType
---@field ImageMaskSoftEdgeMode EnumImageMaskSoftEdgeMode
---@field UIAnimationLayer EnumUIAnimationLayer
---@field KeyboardKeyCode EnumKeyboardKeyCode
---@field ControllerKeyCode EnumControllerKeyCode
---@field KeyEventType EnumKeyEventType
---@diagnostic disable-next-line: missing-fields
---@type Enum
Enum = {}

---@class Color
---@overload fun(r: number, g: number, b: number, a?: number): ColorValue
---@field FromRGB fun(r: number, g: number, b: number): ColorValue
---@field FromRGBA fun(r: number, g: number, b: number, a?: number): ColorValue
---@field ToRGBA fun(colorValue: ColorValue): number, number, number, number
---@diagnostic disable-next-line: missing-fields
---@type Color
Color = {}

---@class Script
---@field alive boolean # 只读 · 脚本实例是否存活
---@field scriptMappingId integer # 只读 · 脚本映射ID
---@field object any # 只读 · 脚本所挂载的宿主对象
---@field path string # 只读 · 脚本路径
---@field enabled boolean # 脚本启用状态
local Script = {}

---@class Tween
local Tween = {}

---@class TweenSequence
local TweenSequence = {}

---@class ServerSignal
local ServerSignal = {}

---@class CursorEventData
---@field dragging boolean # 只读 · 当前是否在拖拽
---@field touchId integer # 只读 · 触点 ID
local CursorEventData = {}

---@class ClientUIBaseControl
---@field alive boolean # 只读 · 控件是否存活
---@field id integer # 只读 · 运行时ID
---@field prefabIndex integer # 只读 · 控件模板索引
---@field active boolean # 只读 · 激活状态；true 时控件可见且挂载脚本逻辑运行，false 时控件不可见且脚本逻辑停止运行。默认为false。
---@field activeInHierarchy boolean # 只读 · 计入全部父级后的实际激活状态
---@field visible boolean # 只读 · 仅控制可见性，不改变激活状态或脚本逻辑运行状态
---@field name string # 控件名称
---@field parent ClientUIBaseControl # 父控件
---@field anchoredPositionX number # 位置、Tweenable
---@field anchoredPositionY number # 位置、Tweenable
---@field sizeDeltaX number # 大小差异、Tweenable
---@field sizeDeltaY number # 大小差异、Tweenable
---@field anchorMinX number # 最小锚点、Tweenable
---@field anchorMinY number # 最小锚点、Tweenable
---@field anchorMaxX number # 最大锚点、Tweenable
---@field anchorMaxY number # 最大锚点、Tweenable
---@field pivotX number # 中心、Tweenable
---@field pivotY number # 中心、Tweenable
---@field localScaleX number # 缩放、Tweenable
---@field localScaleY number # 缩放、Tweenable
---@field localScaleZ number # 缩放、Tweenable
---@field localRotationX number # 旋转、Tweenable
---@field localRotationY number # 旋转、Tweenable
---@field localRotationZ number # 旋转、Tweenable
---@field canControllerFocus boolean # 可被手柄导航摇杆聚焦
local ClientUIBaseControl = {}

---@class ClientUIImageControl : ClientUIBaseControl
---@field imageSource ImageSource # 只读 · 图片来源
---@field imageId integer # 只读 · 图片 ID
---@field imageColor ColorValue # 图片颜色、Tweenable
---@field imageType ImageType # 基础或拉伸类型
---@field enableMask boolean # 是否启用遮罩
---@field enableSoftEdge boolean # 是否启用边缘羽化
---@field softEdgeMode ImageMaskSoftEdgeMode # 边缘羽化模式
---@field softEdgeWidthX number # 水平边缘羽化宽度、Tweenable
---@field softEdgeWidthY number # 垂直边缘羽化宽度、Tweenable
---@field horizontalSoftRange number # 水平边缘羽化范围、Tweenable
---@field verticalSoftRange number # 垂直边缘羽化范围、Tweenable
---@field reverseMaskArea boolean # 是否反转遮罩区域
---@field fillType ImageFillType # 当前填充方式
---@field fillHorizontalType ImageFillHorizontalType # 水平填充方向
---@field fillVerticalType ImageFillVerticalType # 垂直填充方向
---@field fillRadial90Type ImageFillRadial90Type # 90度环绕起点
---@field fillRadialType ImageFillRadialType # 180度环绕和 360度环绕的起点
---@field fillAmount number # 进度
local ClientUIImageControl = {}

---@class ClientUITextBoxControl : ClientUIBaseControl
---@field text string # 显示文本
---@field fontSize integer # 字号，Tweenable
---@field fontColor ColorValue # 字色，Tweenable
---@field bgColor ColorValue # 背景色，Tweenable
---@field enableOutline boolean # 是否启用描边
---@field outlineColor ColorValue # 描边色，Tweenable
---@field horizontalAlignment TextHorizontalAlignment # 水平对齐
---@field verticalAlignment TextVerticalAlignment # 垂直对齐
---@field adaptiveFontSize boolean # 字号自适应
---@field minimumFontSize integer # 字号自适应的最小字号，Tweenable

---@class ClientUITextWindowControl : ClientUIBaseControl
---@field interactable boolean # 是否可交互；与 showScrollBar 同时为 false 时，手柄无法滚动文本视窗
---@field showScrollBar boolean # 是否显示滚动条
---@field text string # 显示文本
---@field fontSize integer # 字号，Tweenable
---@field fontColor ColorValue # 字色，Tweenable
---@field bgColor ColorValue # 背景色，Tweenable
---@field enableOutline boolean # 是否启用描边
---@field outlineColor ColorValue # 描边色，Tweenable
---@field horizontalAlignment TextHorizontalAlignment # 水平对齐
---@field verticalAlignment TextVerticalAlignment # 垂直对齐
---@field adaptiveFontSize boolean # 字号自适应
---@field minimumFontSize integer # 字号自适应的最小字号，Tweenable

---@class ClientUIPresetButtonControl : ClientUIBaseControl
---@field interactable boolean # 是否可交互
---@field clickAudioId integer # 点击音效 ID
---@field raycastTarget boolean # 可被光标射线检测
local ClientUIPresetButtonControl = {}

---@class ClientUICursorEventAreaControl : ClientUIBaseControl
---@field raycastTarget boolean # 可被光标射线检测
local ClientUICursorEventAreaControl = {}

---@class ClientUIGridScrollerControl : ClientUIBaseControl
---@field itemCount integer # 只读 · 列表项数量
---@field itemPrefabIndex integer # 列表项控件模板索引
---@field raycastTarget boolean # 可被光标射线检测
---@field showScrollBar boolean # 是否显示滚动条
---@field interactable boolean # 是否可交互
---@field scrollDirection ScrollDirection # 只读 · 滚动方向
---@field layoutConstraint ScrollLayoutConstraint # 只读 · 列表项布局约束
---@field layoutConstraintFixedCount number # 只读 · 固定布局时每行或每列的列表项数量
---@field scrollProgress number # 滚动进度、Tweenable
local ClientUIGridScrollerControl = {}

---@class ClientUIKeyHintControl : ClientUIBaseControl
---@field keyboardKeyCode KeyboardKeyCode # 键鼠按键枚举值
---@field controllerKeyCode ControllerKeyCode # 手柄按键枚举值

---@class ClientUIAnimationControl : ClientUIBaseControl
---@field animationId integer # 动效 ID
---@field playSoundEffect boolean # 是否播放动效音效
---@field layer UIAnimationLayer # 动效层级
local ClientUIAnimationControl = {}

---@class ClientUIFullscreenAnimationControl : ClientUIBaseControl
---@field animationId integer # 动效 ID
---@field playSoundEffect boolean # 是否播放动效音效

---@class ClientUIContainerControl : ClientUIBaseControl
---@field isolateNavigation boolean # 是否隔离手柄导航
---@field disableKeyEventPassthrough boolean # 是否屏蔽按键事件穿透
---@field disableCursorEventPassthrough boolean # 是否屏蔽区域内点击事件穿透
---@field showCursor boolean # 是否显示常驻光标；CursorEvent相关方法都需设置该参数为真后才可正常使用

---@class ClientUIReferenceControl : ClientUIBaseControl
---@field referencedPrefabIndex integer # 只读 · 引用控件模板索引

---@type Script
script = nil

--- 脚本生命周期
--- 脚本初始化时调用
function OnInit() end

--- 脚本启动时调用
function OnStart() end

--- 脚本启用时调用
function OnEnable() end

--- 脚本停用时调用
function OnDisable() end

--- 脚本逐帧更新时调用，不受关卡时停影响
---@param dt number
function OnUpdate(dt) end

--- 关卡逐帧更新时调用，受关卡时停影响
---@param dt number
function OnLevelUpdate(dt) end

--- 脚本销毁时调用
function OnDestroy() end

--- 全局函数与 game API
--- 返回运行时类型名称；用于识别宿主对象
---@param value any
---@return string
function typeof(value) end

--- 将传入值写入普通级别日志；该函数不阻断运行
---@param ... any
function print(...) end

--- 将传入值写入错误级别日志；该函数不抛出 Lua 错误，也不阻断运行
---@param ... any
function printerr(...) end

--- 生成并返回调用栈文本；message 添加文本开头的说明，level 指定调用栈起始层级；该函数仅返回文本，不自动写入日志
---@param message string|nil
---@param level integer|nil
---@return string
function debug.traceback(message, level) end

--- 将当前客户端控件树按父子层级写入日志
function game.PrintClientUITree() end

--- 判断数值是否为 NaN
---@param n number
---@return boolean
function math.isnan(n) end

--- 判断数值是否为正负无穷
---@param n number
---@return boolean
function math.isinf(n) end

--- 根据已配置的控件模板索引，在 parent 下创建控件实例
---@param controlPrefabIndex integer
---@param parent ClientUIBaseControl
---@return ClientUIBaseControl
function game.InstantiateClientUIControl(controlPrefabIndex, parent) end

--- 销毁指定客户端控件实例
---@param control ClientUIBaseControl
function game.DestroyClientUIControl(control) end

--- 按客户端控件运行时ID获取控件
---@param controlId integer
---@return ClientUIBaseControl
function game.GetClientUIControl(controlId) end

--- 查找名称为 nodeName 的 UI 根控件
---@param nodeName string
---@return ClientUIBaseControl
function game.FindClientUIRoot(nodeName) end

--- 获取全部 UI 根控件。即实际显示的客户端控件容器画布中的默认容器节点
---@return ClientUIBaseControl[]
function game.GetClientUIRoots() end

--- 获取 UI 画布宽高
---@return number x
---@return number y
function game.GetUICanvasSize() end

--- 获取光标 UI 坐标
---@return number x
---@return number y
function game.GetCursorUIPos() end

--- 获取当前输入设备类型
---@return Device
function game.GetDevice() end

--- 设置手柄当前聚焦控件
---@param control ClientUIBaseControl
function game.SetControllerFocus(control) end

--- 获取当前聚焦控件
---@return ClientUIBaseControl
function game.GetControllerFocus() end

--- 获取左摇杆轴值
---@return number horizontal
---@return number vertical
function game.GetControllerLeftStickAxis() end

--- 获取右摇杆轴值
---@return number horizontal
---@return number vertical
function game.GetControllerRightStickAxis() end

--- 按目标字段和持续时间为对象创建补间动画。传入参数分别为传入对象、传入对象的tweenable字段名为键，目标值为值组成的table，持续时间。
---@param object any
---@param tweenDataTable table
---@param duration number
---@return Tween
function game.Tween(object, tweenDataTable, duration) end

--- 创建空的补间动画序列
---@return TweenSequence
function game.TweenSequence() end

--- 使用服务器约定的信号名称 signalName 创建服务器信号
---@param signalName string
---@return ServerSignal
function game.ServerSignal(signalName) end

--- 读取 entityType 和 customVariableName 对应的全局自定义变量，支持复杂变量结构（列表、字典、结构体）
---@param entityType CustomVariableEntityType
---@param customVariableName string
---@return any
function game.GetGlobalCustomVariableValue(entityType, customVariableName) end

--- 单人模式下设置关卡时停状态；true 开启，false 关闭；不暂停脚本自身
---@param pause boolean
function game.PauseLevelTime(pause) end

--- 查询是否处于关卡时停
---@return boolean
function game.IsLevelTimePaused() end

--- 按已配置的音效 ID 播放 2D 音效，并返回音效实例 ID
---@param audioId integer
---@return integer
function game.PlayAudio2D(audioId) end

--- 停止指定音效实例
---@param audioInstanceId integer
function game.StopAudio(audioInstanceId) end

--- 查询音效实例是否存活
---@param audioInstanceId integer
---@return boolean
function game.IsAudioAlive(audioInstanceId) end

--- 获取当前语言
---@return LanguageType
function game.GetLanguageType() end

--- 获取当前关卡模式
---@return StageMode
function game.GetStageMode() end

--- 查询当前是否处于测试游玩状态
---@return boolean
function game.IsTestPlay() end

--- 按已配置的文本映射 ID 获取本地化文本
---@param textMapId string
---@return string
function game.GetText(textMapId) end

--- 由 0–255 RGB 创建颜色
---@param r number
---@param g number
---@param b number
---@return ColorValue
function Color.FromRGB(r, g, b) end

--- 由 0–255 RGBA 创建颜色；a 可省略或传 nil。传nil时等同于255（不透明）
---@param r number
---@param g number
---@param b number
---@param a number|nil
---@return ColorValue
function Color.FromRGBA(r, g, b, a) end

--- 将颜色拆分为0-255的RGBA四个值
---@param colorValue ColorValue
---@return number r
---@return number g
---@return number b
---@return number a
function Color.ToRGBA(colorValue) end

--- Script 方法
--- 控制当前脚本的逐帧更新；false 关闭，true 重新启用
---@param enabled boolean
function Script:EnableUpdate(enabled) end

--- 按变量名称 paramName 读取当前脚本内对应变量的参数
---@param paramName string
---@return any
function Script:GetParam(paramName) end

--- 在UI脚本内定义的全局方法（脚本内环境）；调用当前脚本中名称为 funcName 的函数；参数应使用运行时支持的可传递类型
---@param funcName string
---@param ... any
function Script:Invoke(funcName, ...) end

--- 注册 signalName 对应的服务器信号监听；回调参数依次为信号名称和信号参数数组
---@param signalName string
---@param callback fun(signalName: string, signalParams: any[])
function Script:RegisterServerSignalHandler(signalName, callback) end

--- 移除 signalName 对应的服务器信号监听
---@param signalName string
function Script:UnregisterServerSignalHandler(signalName) end

--- 监听 entityType 和 customVariableName 对应的全局自定义变量变化；回调仅提供实体类型和变量名称，当前值需通过 game.GetGlobalCustomVariableValue 读取
---@param entityType CustomVariableEntityType
---@param customVariableName string
---@param callback fun(entityType: CustomVariableEntityType, customVariableName: string)
function Script:RegisterCustomVariableChangedHandler(entityType, customVariableName, callback) end

--- 移除 entityType 和 customVariableName 对应的自定义变量监听
---@param entityType CustomVariableEntityType
---@param customVariableName string
function Script:UnregisterCustomVariableChangedHandler(entityType, customVariableName) end

--- Tween 方法
--- 设置缓动类型并返回当前实例
---@param easeType EaseType
---@return Tween
function Tween:SetEase(easeType) end

--- 设置 tweenDataTable 中目标值的解释方式；false 表示绝对目标值，true 表示相对当前值的增量
---@param relative boolean
---@return Tween
function Tween:SetRelative(relative) end

--- 开始播放并返回当前实例
---@return Tween
function Tween:Play() end

--- 暂停并保留当前进度
function Tween:Pause() end

--- 从暂停处继续播放
function Tween:Resume() end

--- 回到初始状态并重新播放
function Tween:Restart() end

--- 立即切换到结束状态并完成
function Tween:Complete() end

--- 销毁实例；true 表示先切换到结束状态并触发完成回调，false 表示保持当前状态结束且不触发完成回调
---@param complete boolean
function Tween:Kill(complete) end

--- 设置全部循环完成后的回调并返回当前实例
---@param onComplete fun()
---@return Tween
function Tween:SetOnComplete(onComplete) end

--- 设置步骤完成回调并返回当前实例
---@param onStepComplete fun()
---@return Tween
function Tween:SetOnStepComplete(onStepComplete) end

--- 设置循环次数并返回当前实例；负数表示无限循环
---@param times integer
---@return Tween
function Tween:SetLoops(times) end

--- TweenSequence 方法
--- 在序列末尾接入补间动画补间动画
---@param tween Tween
---@return TweenSequence
function TweenSequence:Append(tween) end

--- 在序列末尾接入指定秒数的等待时间
---@param interval number
---@return TweenSequence
function TweenSequence:AppendInterval(interval) end

--- 在序列末尾接入回调
---@param callback fun()
---@return TweenSequence
function TweenSequence:AppendCallback(callback) end

--- 与当前队尾步骤同时播放；该步骤以最晚结束者为准
---@param tween Tween
---@return TweenSequence
function TweenSequence:Join(tween) end

--- 在指定时间点插入并行补间动画补间动画
---@param time number
---@param tween Tween
---@return TweenSequence
function TweenSequence:Insert(time, tween) end

--- 在指定时间点插入回调
---@param time number
---@param callback fun()
---@return TweenSequence
function TweenSequence:InsertCallback(time, callback) end

--- 开始播放并返回当前实例
---@return TweenSequence
function TweenSequence:Play() end

--- 暂停序列
function TweenSequence:Pause() end

--- 继续播放序列
function TweenSequence:Resume() end

--- 回到初始状态并重新播放
function TweenSequence:Restart() end

--- 立即完成整个序列
function TweenSequence:Complete() end

--- 销毁序列；true 表示先完成，false 表示保持当前状态结束
---@param complete boolean
function TweenSequence:Kill(complete) end

--- 设置整个序列完成回调并返回当前实例
---@param onComplete fun()
---@return TweenSequence
function TweenSequence:SetOnComplete(onComplete) end

--- 设置步骤完成回调并返回当前实例
---@param onStepComplete fun()
---@return TweenSequence
function TweenSequence:SetOnStepComplete(onStepComplete) end

--- 设置循环次数并返回当前实例；负数表示无限循环
---@param times integer
---@return TweenSequence
function TweenSequence:SetLoops(times) end

--- ServerSignal 方法
--- paramType 指定参数类型，paramValue 指定参数值
---@param paramType ParamType
---@param paramValue any
function ServerSignal:AddParam(paramType, paramValue) end

--- 发送已构建的服务器信号
function ServerSignal:SendSignal() end

--- 添加整数参数
---@param intValue integer
function ServerSignal:AddInt(intValue) end

--- 添加整数列表参数
---@param intListValue integer[]
function ServerSignal:AddIntList(intListValue) end

--- 添加浮点数参数
---@param floatValue number
function ServerSignal:AddFloat(floatValue) end

--- 添加浮点数列表参数
---@param floatListValue number[]
function ServerSignal:AddFloatList(floatListValue) end

--- 添加字符串参数
---@param stringValue string
function ServerSignal:AddString(stringValue) end

--- 添加字符串列表参数
---@param stringListValue string[]
function ServerSignal:AddStringList(stringListValue) end

--- 添加三维向量参数；传入以x,y,z为键，目标值为值组成的table
---@param vector3Value table
function ServerSignal:AddVector3(vector3Value) end

--- 添加三维向量列表参数；传入以x,y,z为键，目标值为值组成的table列表。
---@param vector3ListValue table[]
function ServerSignal:AddVector3List(vector3ListValue) end

--- 添加布尔值参数
---@param boolValue boolean
function ServerSignal:AddBool(boolValue) end

--- 添加布尔值列表参数
---@param boolListValue boolean[]
function ServerSignal:AddBoolList(boolListValue) end

--- 添加 GUID 参数
---@param guidValue integer
function ServerSignal:AddGuid(guidValue) end

--- 添加 GUID 列表参数
---@param guidListValue integer[]
function ServerSignal:AddGuidList(guidListValue) end

--- 添加实体参数
---@param entityValue integer
function ServerSignal:AddEntity(entityValue) end

--- 添加实体列表参数
---@param entityListValue integer[]
function ServerSignal:AddEntityList(entityListValue) end

--- 添加元件 ID 参数
---@param prefabIdValue integer
function ServerSignal:AddPrefabId(prefabIdValue) end

--- 添加元件 ID 列表参数
---@param prefabIdListValue integer[]
function ServerSignal:AddPrefabIdList(prefabIdListValue) end

--- 添加配置 ID 参数
---@param configIdValue integer
function ServerSignal:AddConfigId(configIdValue) end

--- 添加配置 ID 列表参数
---@param configIdListValue integer[]
function ServerSignal:AddConfigIdList(configIdListValue) end

--- CursorEventData 方法
--- 以画布左下角为原点，获取当前屏幕 UI 坐标。坐标比例和布局坐标一致。
---@return number x
---@return number y
function CursorEventData:GetUIPos() end

--- 获取按下时的屏幕 UI 坐标
---@return number x
---@return number y
function CursorEventData:GetPressUIPos() end

--- 获取本次事件的屏幕 UI 位移
---@return number x
---@return number y
function CursorEventData:GetUIPosDelta() end

--- ClientUIBaseControl 方法
--- 获取直接子控件
---@return ClientUIBaseControl[]
function ClientUIBaseControl:GetChildren() end

--- 获取当前控件中名称为 name 的直接子控件
---@param name string
---@return ClientUIBaseControl
function ClientUIBaseControl:GetChild(name) end

--- 按路径查找子控件
---@param path string
---@return ClientUIBaseControl
function ClientUIBaseControl:FindChild(path) end

--- 设置激活状态；关闭后控件不可见且挂载脚本逻辑停止运行。
---@param active boolean
function ClientUIBaseControl:SetActive(active) end

--- 仅设置可见性，不改变激活状态，也不停止脚本逻辑
---@param visible boolean
function ClientUIBaseControl:SetVisible(visible) end

--- 获取同级排序索引；返回值范围为 0 到父控件的子控件数量减一
---@return integer
function ClientUIBaseControl:GetSiblingIndex() end

--- 设置同级排序索引；index 范围为 0 到父控件的子控件数量减一；数值越大通常越靠后、显示越靠上
---@param index integer
---@return boolean
function ClientUIBaseControl:SetSiblingIndex(index) end

--- 移到同级首位
---@return boolean
function ClientUIBaseControl:SetAsFirstSibling() end

--- 移到同级末位
---@return boolean
function ClientUIBaseControl:SetAsLastSibling() end

--- 无父层级时，以画布左下为原点获取位置；存在父层级时，获取与父层级中心的相对偏移。
---@return number x
---@return number y
function ClientUIBaseControl:GetAnchoredPosition() end

--- 无父层级时，以画布左下为原点设置位置；存在父层级时，设置与父层级中心的相对偏移。
---@param x number
---@param y number
function ClientUIBaseControl:SetAnchoredPosition(x, y) end

--- 获取大小
---@return number x
---@return number y
function ClientUIBaseControl:GetSizeDelta() end

--- 设置大小
---@param x number
---@param y number
function ClientUIBaseControl:SetSizeDelta(x, y) end

--- 获取最小锚点
---@return number x
---@return number y
function ClientUIBaseControl:GetAnchorMin() end

--- 设置最小锚点
---@param x number
---@param y number
function ClientUIBaseControl:SetAnchorMin(x, y) end

--- 获取最大锚点
---@return number x
---@return number y
function ClientUIBaseControl:GetAnchorMax() end

--- 设置最大锚点
---@param x number
---@param y number
function ClientUIBaseControl:SetAnchorMax(x, y) end

--- 获取中心
---@return number x
---@return number y
function ClientUIBaseControl:GetPivot() end

--- 设置中心
---@param x number
---@param y number
function ClientUIBaseControl:SetPivot(x, y) end

--- 获取缩放
---@return number x
---@return number y
---@return number z
function ClientUIBaseControl:GetLocalScale() end

--- 设置缩放
---@param x number
---@param y number
---@param z number
function ClientUIBaseControl:SetLocalScale(x, y, z) end

--- 获取旋转
---@return number x
---@return number y
---@return number z
function ClientUIBaseControl:GetLocalRotation() end

--- 设置旋转
---@param x number
---@param y number
---@param z number
function ClientUIBaseControl:SetLocalRotation(x, y, z) end

--- 按路径获取挂载脚本
---@param scriptPath string
---@return Script
function ClientUIBaseControl:GetScriptByPath(scriptPath) end

--- 按脚本映射ID获取脚本
---@param scriptMappingId integer
---@return Script
function ClientUIBaseControl:GetScript(scriptMappingId) end

--- 获取控件上全部脚本
---@return Script[]
function ClientUIBaseControl:GetScripts() end

--- 注册指定按键事件监听；回调返回 boolean；移除单个监听时需保留该回调引用。同一个容器中，如果交互按键事件被lua回调响应，并标记为已处理，容器内的其他按键不会也响应此次按键事件
---@param eventType KeyEventType
---@param callback fun(): boolean
function ClientUIBaseControl:AddKeyEventListener(eventType, callback) end

--- 移除指定按键事件和回调的监听；回调必须与注册时的引用相同
---@param eventType KeyEventType
---@param callback fun(): boolean
function ClientUIBaseControl:RemoveKeyEventListener(eventType, callback) end

--- 移除指定按键事件的全部监听
---@param eventType KeyEventType
function ClientUIBaseControl:RemoveKeyEventListeners(eventType) end

--- 移除全部按键事件监听
function ClientUIBaseControl:RemoveAllKeyEventListeners() end

--- 注册指定手柄导航事件监听
---@param eventType ControllerNavigationEventType
---@param callback fun()
function ClientUIBaseControl:AddNavigationEventListener(eventType, callback) end

--- 移除指定手柄导航事件和回调的监听
---@param eventType ControllerNavigationEventType
---@param callback fun()
function ClientUIBaseControl:RemoveNavigationEventListener(eventType, callback) end

--- 移除指定手柄导航事件的全部监听
---@param eventType ControllerNavigationEventType
function ClientUIBaseControl:RemoveNavigationEventListeners(eventType) end

--- 移除全部手柄导航事件监听
function ClientUIBaseControl:RemoveAllNavigationEventListeners() end

--- 设置指定方向的导航模式和目标控件；目标可以为 nil
---@param navigationDir ControllerNavigationDir
---@param navigationMode ControllerNavigationMode
---@param navigationTarget ClientUIBaseControl|nil
function ClientUIBaseControl:SetControllerNavigation(navigationDir, navigationMode, navigationTarget) end

--- 获取指定方向的导航模式和目标控件
---@param navigationDir ControllerNavigationDir
---@return ControllerNavigationMode navigationMode
---@return ClientUIBaseControl|nil navigationTarget
function ClientUIBaseControl:GetControllerNavigation(navigationDir) end

--- ClientUIImageControl 方法
--- 设置图片来源与图片 ID
---@param imageSource ImageSource
---@param imageId integer
function ClientUIImageControl:SetImage(imageSource, imageId) end

--- 设置水平与垂直边缘羽化宽度
---@param widthX number
---@param widthY number
function ClientUIImageControl:SetSoftEdgeWidth(widthX, widthY) end

--- 设置为不使用填充
function ClientUIImageControl:SetFillUnused() end

--- 设置水平填充
---@param fillHorizontalType ImageFillHorizontalType
---@param fillAmount number
function ClientUIImageControl:SetFillHorizontal(fillHorizontalType, fillAmount) end

--- 设置垂直填充
---@param fillVerticalType ImageFillVerticalType
---@param fillAmount number
function ClientUIImageControl:SetFillVertical(fillVerticalType, fillAmount) end

--- 设置 90度环绕填充
---@param fillRadial90Type ImageFillRadial90Type
---@param fillAmount number
function ClientUIImageControl:SetFillRadial90(fillRadial90Type, fillAmount) end

--- 设置 180度环绕填充
---@param fillRadialType ImageFillRadialType
---@param fillAmount number
function ClientUIImageControl:SetFillRadial180(fillRadialType, fillAmount) end

--- 设置 360度环绕填充
---@param fillRadialType ImageFillRadialType
---@param fillAmount number
function ClientUIImageControl:SetFillRadial360(fillRadialType, fillAmount) end

--- ClientUIPresetButtonControl 方法
--- 注册指定光标事件监听；回调接收 CursorEventData
---@param eventType CursorEventType
---@param callback fun(eventData: CursorEventData)
function ClientUIPresetButtonControl:AddCursorEventListener(eventType, callback) end

--- 移除指定光标事件和回调的监听
---@param eventType CursorEventType
---@param callback fun(eventData: CursorEventData)
function ClientUIPresetButtonControl:RemoveCursorEventListener(eventType, callback) end

--- 移除指定光标事件的全部监听
---@param eventType CursorEventType
function ClientUIPresetButtonControl:RemoveCursorEventListeners(eventType) end

--- 移除全部光标事件监听
function ClientUIPresetButtonControl:RemoveAllCursorEventListeners() end

--- 按顺序模拟 CursorDown、CursorUp 与 CursorClick
function ClientUIPresetButtonControl:SimulateCursorClick() end

--- ClientUICursorEventAreaControl 方法
--- 注册指定光标事件监听；回调接收 CursorEventData
---@param eventType CursorEventType
---@param callback fun(eventData: CursorEventData)
function ClientUICursorEventAreaControl:AddCursorEventListener(eventType, callback) end

--- 移除指定光标事件和回调的监听
---@param eventType CursorEventType
---@param callback fun(eventData: CursorEventData)
function ClientUICursorEventAreaControl:RemoveCursorEventListener(eventType, callback) end

--- 移除指定光标事件的全部监听
---@param eventType CursorEventType
function ClientUICursorEventAreaControl:RemoveCursorEventListeners(eventType) end

--- 移除全部光标事件监听
function ClientUICursorEventAreaControl:RemoveAllCursorEventListeners() end

--- 按顺序模拟 CursorDown、CursorUp 与 CursorClick
function ClientUICursorEventAreaControl:SimulateCursorClick() end

--- ClientUIGridScrollerControl 方法
--- 刷新列表项并逐项调用回调；刷新回调形式为 fun(control: ClientUIBaseControl, index: integer)，参数依次为当前列表项控件和列表项索引
---@param itemCount integer
---@param refreshCallback fun(control: ClientUIBaseControl, index: integer)
function ClientUIGridScrollerControl:RefreshItems(itemCount, refreshCallback) end

--- 获取列表项控件的索引
---@param control ClientUIBaseControl
---@return integer
function ClientUIGridScrollerControl:GetItemIndex(control) end

--- 获取列表项宽度与高度
---@return number x
---@return number y
function ClientUIGridScrollerControl:GetItemSize() end

--- 获取列表项的水平与垂直间距
---@return number x
---@return number y
function ClientUIGridScrollerControl:GetItemSpacing() end

--- 获取内容区域的上、下、左、右内边距
---@return number top
---@return number bottom
---@return number left
---@return number right
function ClientUIGridScrollerControl:GetPadding() end

--- 滚动到索引为 index 的列表项，并按 scrollAlignType 对齐
---@param index integer
---@param scrollAlignType ScrollAlignType
function ClientUIGridScrollerControl:ScrollToItemAt(index, scrollAlignType) end

--- 获取滚动内容在滚动方向上的长度
---@return number
function ClientUIGridScrollerControl:GetContentLength() end

--- ClientUIAnimationControl 方法
--- 播放界面动效
function ClientUIAnimationControl:PlayAnimation() end

--- 停止界面动效
function ClientUIAnimationControl:StopAnimation() end

