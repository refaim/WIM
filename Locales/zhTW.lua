if GetLocale() ~= "zhTW" then return end

BINDING_NAME_WIMSHOWNEW = "顯示新訊息";
BINDING_NAME_WIMHISTORY = "檢視歷史";
BINDING_NAME_WIMENABLE = "啟用/停用";
BINDING_NAME_WIMTOGGLE = "切換訊息";
BINDING_NAME_WIMSHOWALL = "顯示所有訊息";
BINDING_NAME_WIMHIDEALL = "隱藏所有訊息";

-- Class Names
WIM_LOCALIZED_DRUID = "德魯伊";
WIM_LOCALIZED_HUNTER = "獵人";
WIM_LOCALIZED_MAGE = "法師";
WIM_LOCALIZED_PALADIN = "聖騎士";
WIM_LOCALIZED_PRIEST = "牧師";
WIM_LOCALIZED_ROGUE = "盜賊";
WIM_LOCALIZED_SHAMAN = "薩滿";
WIM_LOCALIZED_WARLOCK = "術士";
WIM_LOCALIZED_WARRIOR = "戰士";

--icons.xml
WIM_L_CONVERSATIONS="對話";
WIM_L_CONVERSATIONSMENU="對話選單";
WIM_L_SHOWNEWMESSAGES="顯示新訊息";
WIM_L_WIMOPTIONS="WIM選項";
WIM_L_RIGHTCLICK="右鍵點擊";
WIM_L_LEFTCLICK="左鍵點擊";
--options.xml
WIM_L_ENABLEWIM="啟用WIM";
WIM_L_DISPLAYOPT="顯示選項";
WIM_L_INCOMWHISP="收到的密語";
WIM_L_OUTGOMWHISP="發出的密語";
WIM_L_SYSMESS="系統訊息";
WIM_L_ERRORMESS="錯誤訊息";
WIM_L_WEBADDRESSLINK="網址連結";
WIM_L_SHOWSHORTCUTBAR="顯示快捷列。";
WIM_L_THISSETLIMIT="此設定限制\n視窗的最小高度。";
WIM_L_SHOWTIMESTAMPS="顯示時間戳記。";
WIM_L_SHOWCHARINFO="顯示角色資訊：";
WIM_L_CHANGESWILLBEMADE="變更只會套用於\n新的訊息視窗。\n|cffffffff(需要背景/who查詢。)|r";
WIM_L_CLASSICONS="職業圖示";
WIM_L_CHANGESWILLBEMADENEWMESS="變更只會套用於\n新的訊息視窗。";
WIM_L_CLASSCOLORS="職業顏色";
WIM_L_CHARDETAILS="角色詳情";
WIM_L_MINIMAPICON="小地圖圖示";
WIM_L_SHOWMINIMAPICON="顯示小地圖圖示";
WIM_L_FREEMOVING="自由移動";
WIM_L_FREEMOVINGTOOLTIP="啟用後，Shift-左鍵點擊\n小地圖圖示可以將其\n拖曳到螢幕任意位置。";
WIM_L_WINDOWS=" 視窗 ";
WIM_L_GENERAL=" 一般 ";
WIM_L_FILTERS=" 過濾 ";
WIM_L_HISTORY=" 歷史 ";
WIM_L_HISTORYAUTOFOCUS="彈出時自動聚焦視窗。";
WIM_L_HISTORYFOCUSSENDMESS="傳送訊息後保持聚焦。";
WIM_L_HISTORYFOCUSONLYCITY="僅在主城時。";
WIM_L_SHOWTOOLTIPS="顯示提示。";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="傳送密語時彈出視窗。";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="收到新密語時彈出視窗。";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="收到回覆時彈出視窗。";
WIM_L_DISABLEPOPUPSINCOMBAT="戰鬥中停用彈出視窗。";
WIM_L_SUPRESSWHISPFROMDEFCHAT="在預設聊天框中隱藏密語。";
WIM_L_PLAYSOUND="收到訊息時播放音效。";
WIM_L_SORTCONV="按字母順序排列對話清單。";
WIM_L_AFKANDDNDMESS="顯示AFK和DND訊息。";
WIM_L_ESCTOCLOSEWINDOWS="使用'Escape'鍵關閉視窗。";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="使用'Escape'鍵有其限制。|cffffffff例如：開啟地圖時視窗會關閉。|r";
WIM_L_INTERCEPTWHISPCOM="攔截密語指令。";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM將攔截所有密語指令並自動開啟新的訊息視窗。（例如：/w或/whisper）。";
WIM_L_CASCADINGDIR="啟用階層式排列。方向：";
WIM_L_SETLOC="設定位置";
WIM_L_ALIASING="啟用別名";
WIM_L_SHOWASCOMMENT="顯示為註解";
WIM_L_BUTNAME="名字";
WIM_L_BUTALIAS="別名";
WIM_L_ADD="新增";
WIM_L_ADDNEWALIAS="新增別名";
WIM_L_REMOVE="移除";
WIM_L_EDIT="編輯";
WIM_L_EDITALIAS="編輯別名";
WIM_L_ENABLEFILTER="啟用過濾";
WIM_L_KEYWORDSANDPHRASES="關鍵字/詞組";
WIM_L_ACTION="動作";
WIM_L_ADDNEWFILTER="新增過濾器";
WIM_L_EDITFILTER="編輯過濾器";
WIM_L_ENABLEHISTORY="啟用歷史";
WIM_L_RECEVERYONE="記錄所有人";
WIM_L_RECFRIENDS="記錄好友";
WIM_L_RECGUILD="記錄公會";
WIM_L_INCOMMESS="收到的訊息";
WIM_L_OUTGOMMESS="發出的訊息";
WIM_L_SHOWHISTORYINMESS="在訊息中顯示歷史：";
WIM_L_SETMAXMESSPERUSER="每位使用者最大訊息數：";
WIM_L_DELMESSOLDERTHAN="刪除早於以下時間的訊息：";
WIM_L_RECORDEDUSERS="已記錄的使用者";
WIM_L_SAVEDMESS="已儲存的訊息";
WIM_L_DELUSER="刪除使用者";
WIM_L_VIEWHISTORY="檢視歷史";
WIM_L_CHARNAME="角色名稱";
WIM_L_CHARALIAS="角色別名";
WIM_L_CANCEL="取消";
WIM_L_OK="確定";
WIM_L_PERFORMFOLLACT="執行以下動作：";
WIM_L_ERREXAMPLEERRMESS="錯誤：範例錯誤訊息";
WIM_L_KEYWORDSANDPHRASETOFILTER="要過濾的關鍵字/詞組";
WIM_L_IGNORE="忽略";
WIM_L_BLOCK="封鎖";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="沒有新訊息。";
WIM_L_RECENTCONV="最近對話 %d / %d";
WIM_L_WIMDOC="WIM文件";
WIM_L_DESCRIPTION=" 描述 ";
WIM_L_VERSIONHISTORY=" 版本歷史 ";
WIM_L_DIDYOUKNOW=" 你知道嗎？ ";
WIM_L_CREDITS=" 致謝 ";
--options.lua
WIM_L_ICONPOSIT="圖示位置";
WIM_L_FONTSIZE="字型大小";
WIM_L_WINDOWSIZEPERC="視窗大小（百分比）";
WIM_L_TRANSPARENCYPERC="透明度（百分比）";
WIM_L_WINDOWWIDTH="視窗寬度";
WIM_L_WINDOWHEIGHT="視窗高度";
WIM_L_UP="上";
WIM_L_DOWN="下";
WIM_L_LEFT="左";
WIM_L_RIGHT="右";
WIM_L_UPANDLEFT="上 & 左";
WIM_L_UPANDRIGHT="上 & 右";
WIM_L_DOWNANDLEFT="下 & 左";
WIM_L_DOWNANDRIGHT="下 & 右";
WIM_L_DRAGTOSETDEFSPAWN="拖曳以設定訊息視窗的\n預設生成位置。";
WIM_L_DAY="天";
WIM_L_WEEK="週";
WIM_L_MONTH="月";
WIM_L_ERRINVALIDKEYWORD="錯誤：無效的關鍵字/詞組！";
WIM_L_ERRKEYWORDALREADYUSED="錯誤：關鍵字/詞組已被使用！";
WIM_L_ERRNAMEALREADYUSED="錯誤：名字已被使用！";
WIM_L_ERRINVALIAS="錯誤：無效的別名！";
WIM_L_ERRINVNAME="錯誤：無效的名字！";
WIM_L_WINDOWHEIGHTLIM="視窗高度 |cffffffff（受快捷列限制）|r";
--history.lua
WIM_L_NONESHOWALL="無（顯示全部）";
--history.xml
WIM_L_HISTORYVIEWER="WIM歷史檢視器";
WIM_L_USERS="使用者";
WIM_L_FILTERS2="過濾器";
WIM_L_MESS="訊息";
--urlcopy.xml
WIM_L_URLCOPY="複製URL";
--wim.lua
WIM_L_NONE=" - 無 -";
WIM_L_NONEC="|cffffffff - 無 -";
WIM_L_INSPECT="檢視";
WIM_L_TRADE="交易";
WIM_L_INVITE="邀請";
WIM_L_TARGET="選擇目標";
WIM_L_GAMEMASTER="遊戲管理員";
WIM_L_DATE_FORMAT="%y/%m/%d";
WIM_L_NEWMESSAGE="新訊息！";
WIM_L_CONVCLOSED="對話已結束。";
WIM_L_PURGEDMESSAGES="[WIM]: 已從歷史中刪除 %d 則過期訊息。";
--wim_titan.lua
WIM_L_MESSAGES="訊息: ";
--wim.xml
WIM_L_XTOOLTIP="Shift &amp; 左鍵點擊結束對話。";
WIM_L_HISTORYTOOLTIP="點擊檢視訊息歷史。";
WIM_L_RUSUREYOUWANTIGNORE="你確定要忽略\n這位使用者嗎？";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM正如其名；是遊戲內密語的即時通訊介面。它專門設計為不干擾你繁忙的介面（在副本中），同時提供與每位使用者聊天視窗的便利。

請檢查你的按鍵設定畫面，尋找WIM的可用動作。
|r
實用指令：
/wim			|cffffffff- 選項視窗|r
/wim history	|cffffffff- 歷史檢視器|r
/wim help		|cffffffff- （此視窗）|r

進階指令：
/wim reset			|cffffffff- 重設所有選項為預設值。|r
/wim reset filters	|cffffffff- 重新載入所有內建過濾器定義。|r
/wim clear history	|cffffffff- 清除歷史。|r

WIM整合到以下插件：|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
你知道嗎...|cffffffff 輸入指令 |r/wim |cffffffff可以開啟選項介面，在那裡你可以自訂WIM的外觀和功能？|r

你知道嗎...|cffffffff WIM內建了Titan Panel插件？在Titan的插件選單中尋找！|r

你知道嗎...|cffffffff 如果你在主選單中點擊「按鍵設定」，可以找到一些WIM的實用快捷鍵？|r

你知道嗎...|cffffffff 你可以讓小地圖圖示自由移動？在自由移動模式下，你可以Shift-左鍵點擊圖示將其拖曳到任何地方。|r

你知道嗎...|cffffffff 在訊息中按Tab鍵可以在其他訊息之間切換？|r

你知道嗎...|cffffffff WIM有很多選項，在一般選項標籤頁有捲軸？一定要看看，可能有一些你不知道的選項！|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) 作者 Pazza <Bronzebeard>。
|cffffffff概念和創意來自 Sloans <Bronzebeard>。|r

我想感謝所有幫助測試WIM並提交意見和建議的人，包括：
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Resurgence <Bronzebeard> 的所有人
|r

我還要感謝在 ui.WorldOfWar.net 和 Curse-Gaming.com 上貢獻的所有人。
]]
