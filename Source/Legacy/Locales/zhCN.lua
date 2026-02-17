if GetLocale() ~= "zhCN" then return end

BINDING_NAME_WIMSHOWNEW = "显示新消息";
BINDING_NAME_WIMHISTORY = "查看历史";
BINDING_NAME_WIMENABLE = "启用/禁用";
BINDING_NAME_WIMTOGGLE = "切换消息";
BINDING_NAME_WIMSHOWALL = "显示所有消息";
BINDING_NAME_WIMHIDEALL = "隐藏所有消息";

-- Class Names
WIM_LOCALIZED_DRUID = "德鲁伊";
WIM_LOCALIZED_HUNTER = "猎人";
WIM_LOCALIZED_MAGE = "法师";
WIM_LOCALIZED_PALADIN = "圣骑士";
WIM_LOCALIZED_PRIEST = "牧师";
WIM_LOCALIZED_ROGUE = "盗贼";
WIM_LOCALIZED_SHAMAN = "萨满祭司";
WIM_LOCALIZED_WARLOCK = "术士";
WIM_LOCALIZED_WARRIOR = "战士";

--icons.xml
WIM_L_CONVERSATIONS="对话";
WIM_L_CONVERSATIONSMENU="对话菜单";
WIM_L_SHOWNEWMESSAGES="显示新消息";
WIM_L_WIMOPTIONS="WIM选项";
WIM_L_RIGHTCLICK="右键点击";
WIM_L_LEFTCLICK="左键点击";
--options.xml
WIM_L_ENABLEWIM="启用WIM";
WIM_L_DISPLAYOPT="显示选项";
WIM_L_INCOMWHISP="收到的密语";
WIM_L_OUTGOMWHISP="发出的密语";
WIM_L_SYSMESS="系统消息";
WIM_L_ERRORMESS="错误消息";
WIM_L_WEBADDRESSLINK="网址链接";
WIM_L_SHOWSHORTCUTBAR="显示快捷栏。";
WIM_L_THISSETLIMIT="此设置限制\n窗口的最小高度。";
WIM_L_SHOWTIMESTAMPS="显示时间戳。";
WIM_L_SHOWCHARINFO="显示角色信息：";
WIM_L_CHANGESWILLBEMADE="更改只会应用于\n新的消息窗口。\n|cffffffff(需要后台/who查询。)|r";
WIM_L_CLASSICONS="职业图标";
WIM_L_CHANGESWILLBEMADENEWMESS="更改只会应用于\n新的消息窗口。";
WIM_L_CLASSCOLORS="职业颜色";
WIM_L_CHARDETAILS="角色详情";
WIM_L_MINIMAPICON="小地图图标";
WIM_L_SHOWMINIMAPICON="显示小地图图标";
WIM_L_FREEMOVING="自由移动";
WIM_L_FREEMOVINGTOOLTIP="启用后，Shift-左键点击\n小地图图标可以将其\n拖动到屏幕任意位置。";
WIM_L_WINDOWS=" 窗口 ";
WIM_L_GENERAL=" 常规 ";
WIM_L_FILTERS=" 过滤 ";
WIM_L_HISTORY=" 历史 ";
WIM_L_HISTORYAUTOFOCUS="弹出时自动聚焦窗口。";
WIM_L_HISTORYFOCUSSENDMESS="发送消息后保持聚焦。";
WIM_L_HISTORYFOCUSONLYCITY="仅在主城时。";
WIM_L_SHOWTOOLTIPS="显示提示。";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="发送密语时弹出窗口。";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="收到新密语时弹出窗口。";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="收到回复时弹出窗口。";
WIM_L_DISABLEPOPUPSINCOMBAT="战斗中禁用弹出窗口。";
WIM_L_SUPRESSWHISPFROMDEFCHAT="在默认聊天框中隐藏密语。";
WIM_L_PLAYSOUND="收到消息时播放声音。";
WIM_L_SORTCONV="按字母顺序排列对话列表。";
WIM_L_AFKANDDNDMESS="显示AFK和DND消息。";
WIM_L_ESCTOCLOSEWINDOWS="使用'Escape'键关闭窗口。";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="使用'Escape'键有其局限性。|cffffffff例如：打开地图时窗口会关闭。|r";
WIM_L_INTERCEPTWHISPCOM="拦截密语命令。";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM将拦截所有密语命令并自动打开新的消息窗口。（例如：/w或/whisper）。";
WIM_L_CASCADINGDIR="启用层叠。方向：";
WIM_L_SETLOC="设置位置";
WIM_L_ALIASING="启用别名";
WIM_L_SHOWASCOMMENT="显示为注释";
WIM_L_BUTNAME="名字";
WIM_L_BUTALIAS="别名";
WIM_L_ADD="添加";
WIM_L_ADDNEWALIAS="添加新别名";
WIM_L_REMOVE="移除";
WIM_L_EDIT="编辑";
WIM_L_EDITALIAS="编辑别名";
WIM_L_ENABLEFILTER="启用过滤";
WIM_L_KEYWORDSANDPHRASES="关键词/短语";
WIM_L_ACTION="动作";
WIM_L_ADDNEWFILTER="添加新过滤器";
WIM_L_EDITFILTER="编辑过滤器";
WIM_L_ENABLEHISTORY="启用历史";
WIM_L_RECEVERYONE="记录所有人";
WIM_L_RECFRIENDS="记录好友";
WIM_L_RECGUILD="记录公会";
WIM_L_INCOMMESS="收到的消息";
WIM_L_OUTGOMMESS="发出的消息";
WIM_L_SHOWHISTORYINMESS="在消息中显示历史：";
WIM_L_SETMAXMESSPERUSER="每用户最大消息数：";
WIM_L_DELMESSOLDERTHAN="删除早于以下时间的消息：";
WIM_L_RECORDEDUSERS="已记录的用户";
WIM_L_SAVEDMESS="已保存的消息";
WIM_L_DELUSER="删除用户";
WIM_L_VIEWHISTORY="查看历史";
WIM_L_CHARNAME="角色名";
WIM_L_CHARALIAS="角色别名";
WIM_L_CANCEL="取消";
WIM_L_OK="确定";
WIM_L_PERFORMFOLLACT="执行以下动作：";
WIM_L_ERREXAMPLEERRMESS="错误：示例错误消息";
WIM_L_KEYWORDSANDPHRASETOFILTER="要过滤的关键词/短语";
WIM_L_IGNORE="忽略";
WIM_L_BLOCK="屏蔽";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="没有新消息。";
WIM_L_RECENTCONV="最近对话 %d / %d";
WIM_L_WIMDOC="WIM文档";
WIM_L_DESCRIPTION=" 描述 ";
WIM_L_VERSIONHISTORY=" 版本历史 ";
WIM_L_DIDYOUKNOW=" 你知道吗？ ";
WIM_L_CREDITS=" 致谢 ";
--options.lua
WIM_L_ICONPOSIT="图标位置";
WIM_L_FONTSIZE="字体大小";
WIM_L_WINDOWSIZEPERC="窗口大小（百分比）";
WIM_L_TRANSPARENCYPERC="透明度（百分比）";
WIM_L_WINDOWWIDTH="窗口宽度";
WIM_L_WINDOWHEIGHT="窗口高度";
WIM_L_UP="上";
WIM_L_DOWN="下";
WIM_L_LEFT="左";
WIM_L_RIGHT="右";
WIM_L_UPANDLEFT="上 & 左";
WIM_L_UPANDRIGHT="上 & 右";
WIM_L_DOWNANDLEFT="下 & 左";
WIM_L_DOWNANDRIGHT="下 & 右";
WIM_L_DRAGTOSETDEFSPAWN="拖动以设置消息窗口的\n默认生成位置。";
WIM_L_DAY="天";
WIM_L_WEEK="周";
WIM_L_MONTH="月";
WIM_L_ERRINVALIDKEYWORD="错误：无效的关键词/短语！";
WIM_L_ERRKEYWORDALREADYUSED="错误：关键词/短语已被使用！";
WIM_L_ERRNAMEALREADYUSED="错误：名字已被使用！";
WIM_L_ERRINVALIAS="错误：无效的别名！";
WIM_L_ERRINVNAME="错误：无效的名字！";
WIM_L_WINDOWHEIGHTLIM="窗口高度 |cffffffff（受快捷栏限制）|r";
--history.lua
WIM_L_NONESHOWALL="无（显示全部）";
--history.xml
WIM_L_HISTORYVIEWER="WIM历史查看器";
WIM_L_USERS="用户";
WIM_L_FILTERS2="过滤器";
WIM_L_MESS="消息";
--urlcopy.xml
WIM_L_URLCOPY="复制URL";
--wim.lua
WIM_L_NONE=" - 无 -";
WIM_L_NONEC="|cffffffff - 无 -";
WIM_L_INSPECT="检查";
WIM_L_TRADE="交易";
WIM_L_INVITE="邀请";
WIM_L_TARGET="选择目标";
WIM_L_GAMEMASTER="游戏管理员";
WIM_L_DATE_FORMAT="%y/%m/%d";
WIM_L_NEWMESSAGE="新消息！";
WIM_L_CONVCLOSED="对话已关闭。";
WIM_L_PURGEDMESSAGES="[WIM]: 已从历史中删除 %d 条过期消息。";
--wim_titan.lua
WIM_L_MESSAGES="消息: ";
--wim.xml
WIM_L_XTOOLTIP="Shift & 左键点击结束对话。";
WIM_L_HISTORYTOOLTIP="点击查看消息历史。";
WIM_L_RUSUREYOUWANTIGNORE="你确定要忽略\n这个用户吗？";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM正如其名；是游戏内密语的即时通讯界面。它专门设计为不干扰你繁忙的界面（在副本中），同时提供与每个用户聊天窗口的便利。

请检查你的按键绑定屏幕，寻找WIM的可用动作。
|r
有用的命令：
/wim			|cffffffff- 选项窗口|r
/wim history	|cffffffff- 历史查看器|r
/wim help		|cffffffff- （此窗口）|r

高级命令：
/wim reset			|cffffffff- 重置所有选项为默认值。|r
/wim reset filters	|cffffffff- 重新加载所有内置过滤器定义。|r
/wim clear history	|cffffffff- 清除历史。|r

WIM集成到以下插件：|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
你知道吗...|cffffffff 输入命令 |r/wim |cffffffff可以打开选项界面，在那里你可以自定义WIM的外观和功能？|r

你知道吗...|cffffffff WIM内置了Titan Panel插件？在Titan的插件菜单中查找！|r

你知道吗...|cffffffff 如果你在主菜单中点击"按键绑定"，可以找到一些WIM的有用快捷键？|r

你知道吗...|cffffffff 你可以让小地图图标自由移动？在自由移动模式下，你可以Shift-左键点击图标将其拖到任何地方。|r

你知道吗...|cffffffff 在消息中按Tab键可以在其他消息之间切换？|r

你知道吗...|cffffffff WIM有很多选项，在常规选项标签页有滚动条？一定要看看，可能有一些你不知道的选项！|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) 作者 Pazza <Bronzebeard>。
|cffffffff概念和创意来自 Sloans <Bronzebeard>。|r

我想感谢所有帮助测试WIM并提交反馈和建议的人，包括：
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Resurgence <Bronzebeard> 的所有人
|r

我还要感谢在 ui.WorldOfWar.net 和 Curse-Gaming.com 上贡献的所有人。
]]
