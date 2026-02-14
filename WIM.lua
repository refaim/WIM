WIM_VERSION = "1.3.10";

WIM_Windows = {};
WIM_EditBoxInFocus = nil;
WIM_NewMessageFlag = false;
WIM_NewMessageCount = 0;
WIM_Icon_TheMenu = nil;
WIM_Icon_UpdateInterval = .5;
WIM_CascadeStep = 0;
WIM_MaxMenuCount = 20;
WIM_ClassIcons = {};
WIM_ClassColors = {};
WIM_PlayerCache = {}
WIM_PlayerCacheQueue = {}
WIM_WhisperedTo = {}
WIM_LastWhoSent = nil
WIM_WhoScanInProgress = false
WIM_IsGM = false
WIM_Debug = false

-- GM Check on load: Check for "Teleport to GM Island" spell in spellbook
local WIM_GMCheckFrame = CreateFrame("Frame")
WIM_GMCheckFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
WIM_GMCheckFrame:SetScript("OnEvent", function()
	local i = 1
	while true do
		local spellName = GetSpellName(i, BOOKTYPE_SPELL)
		if not spellName then break end
		if spellName == "Teleport to GM Island" then
			WIM_IsGM = true
			break
		end
		i = i + 1
	end
end)

-- Debug helper with timestamp
function WIM_DebugMsg(msg)
	if WIM_Debug then
		local timestamp = date("%H:%M:%S")
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r " .. msg)
	end
end

-- Debug slash command
SLASH_WIMDEBUG1 = "/wimdebug"
SlashCmdList["WIMDEBUG"] = function()
	WIM_Debug = not WIM_Debug
	local timestamp = date("%H:%M:%S")
	if WIM_Debug then
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r Debug mode ON")
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r Queue: " .. WIM_TableCount(WIM_PlayerCacheQueue) .. " players")
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r Cache: " .. WIM_TableCount(WIM_PlayerCache) .. " players")
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r LastWhoSent: " .. (WIM_LastWhoSent and string.format("%.1fs ago", GetTime() - WIM_LastWhoSent) or "never"))
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r IsGM: " .. tostring(WIM_IsGM))
		-- Show queue contents
		for name, info in WIM_PlayerCacheQueue do
			DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM]|r   Queue: " .. name .. " (attempts=" .. info.attempts .. ")")
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cffff0000[WIM]|r Debug mode OFF")
	end
end

function WIM_TableCount(t)
	local count = 0
	for _ in t do count = count + 1 end
	return count
end

WIM_AlreadyCheckedGuildRoster = false;

WIM_GuildList = {}; --[Not saved between sessions: Autopopulates from GUILD_ROSTER_UPDATE event
WIM_FriendList = {}; --[Not saved between sessions: Autopopulates from FRIENDLIST_SHOW & FRIENDLIST_UPDATE event

WIM_Alias = {};
WIM_Filters = nil;
	
WIM_ToggleWindow_Timer = 0;
WIM_ToggleWindow_Index = 1;

WIM_RecentList = {}; --[Not saved between sessions: Store's list of recent conversations.
	
WIM_History = {};

function WIM_DeepCopy(t)
	local copy = {}
	for key, value in pairs(t) do
		if type(value) == "table" then
			copy[key] = WIM_DeepCopy(value)
		else
			copy[key] = value
		end
	end
	return copy
end

WIM_Data_DEFAULTS = {
	versionLastLoaded = "",
	showChangeLogOnNewVersion = true,
	enableWIM = true,
	iconPosition=337,
	showMiniMap=true,
	displayColors = {
		wispIn = {r=0.5607843137254902, g=0.03137254901960784, b=0.7607843137254902},
		wispOut = {r=1, g=0.07843137254901961, b=0.9882352941176471},
		sysMsg = {r=1, g=0.6627450980392157, b=0},
		errorMsg = {r=1, g=0, b=0},
		webAddress = {r=0, g=0, b=1},
	},
	fontSize = 12,
	windowSize = 1,
	windowAlpha = .8,
	supressWisps = true,
	keepFocus = false,
	keepFocusRested = false,
	popNew = true,
	popUpdate = true,
	popOnSend = true,
	popCombat = false,
	autoFocus = false,
	playSoundWisp = true,
	showToolTips = true,
	sortAlpha = false,
	winSize = {
		width = 384,
		height = 256
	},
	winLoc = {
		left =242 ,
		top =775
	},
	winCascade = {
		enabled = true,
		direction = "downright"
	},
	miniFreeMoving = {
		enabled = false;
		left = 0,
		top = 0
	},
	characterInfo = {
		show = true,
		classIcon = true,
		details = true,
		classColor = true
	},
	showTimeStamps = true,
	showShortcutBar = true,
	enableAlias = true,
	enableFilter = true,
	aliasAsComment = true,
	enableHistory = true,
	historySettings = {
		recordEveryone = false,
		recordFriends = true,
		recordGuild = true,
		colorIn = {
				r=0.4705882352941176,
				g=0.4705882352941176,
				b=0.4705882352941176
		},
		colorOut = {
				r=0.7058823529411764,
				g=0.7058823529411764,
				b=0.7058823529411764
		},
		popWin = {
			enabled = true,
			count = 25
		},
		maxMsg = {
			enabled = true,
			count = 200
		},
		autoDelete = {
			enabled = true,
			days = 7
		}
	},
	showAFK = true,
	useEscape = true,
	hookWispParse = true,
};
--[initialize defualt values
WIM_Data = WIM_DeepCopy(WIM_Data_DEFAULTS);

WIM_CascadeDirection = {
	up = {
		left = 0,
		top = 25
	},
	down = {
		left = 0,
		top = -25
	},
	left = {
		left = -50,
		top = 0
	},
	right = {
		left = 50,
		top = 0
	},
	upleft = {
		left = -50,
		top = 25
	},
	upright = {
		left = 50,
		top = 25
	},
	downleft = {
		left = -50,
		top = -25
	},
	downright = {
		left = 50,
		top = -25
	}
};

WIM_IconItems = { };

function WIM_OnLoad()
	SlashCmdList["WIM"] = WIM_SlashCommand;
	SLASH_WIM1 = "/wim";
end


function WIM_VersionToNumber(ver)
	local digits = string.gsub(ver, "%D", "")
	return tonumber(digits) or 0
end

function WIM_DeepMergeDefaults(target, defaults)
	for key, value in pairs(defaults) do
		if target[key] == nil then
			if type(value) == "table" then
				target[key] = WIM_DeepCopy(value)
			else
				target[key] = value
			end
		elseif type(value) == "table" and type(target[key]) == "table" then
			WIM_DeepMergeDefaults(target[key], value)
		end
	end
end

function WIM_Incoming(event)
	--[Events
	if(event == "VARIABLES_LOADED") then
		-- Apply defaults for any missing settings (deep merge)
		WIM_DeepMergeDefaults(WIM_Data, WIM_Data_DEFAULTS)
		
		if(WIM_Filters == nil) then
			WIM_LoadDefaultFilters();
		end
		ShowFriends(); --[update friend list
		if(IsInGuild()) then GuildRoster(); end; --[update guild roster
		
		ItemRefTooltip:SetFrameStrata("TOOLTIP");
		
		WIM_HistoryPurge();
		
		WIM_InitClassProps();
		
		WIM_SetWIM_Enabled(WIM_Data.enableWIM);
		
		if WIM_VERSION ~= WIM_Data.versionLastLoaded then
			-- v1.3.8: remove outdated spam filters from SavedVariables
			if WIM_VersionToNumber(WIM_Data.versionLastLoaded) <= WIM_VersionToNumber("1.3.7") then
				local outdatedFilters = {
					"^<GA", "USD", "W@W", "C@M", "G4", "G=", ">>", ">>>",
					"OKO", "GAMES", "NOST", "DOLLARS", "CQM", "SERVICE",
					"CHEAP", "WWW", "1-60",
				}
				for _, key in ipairs(outdatedFilters) do
					WIM_Filters[key] = nil
				end
			end
			WIM_Help:Show();
			if WIM_Data.versionLastLoaded ~= "" then
				WIM_Help_ChangeLog_Click();
			end
		end
		WIM_Data.versionLastLoaded = WIM_VERSION;
		
		if(WIM_Data.miniFreeMoving.enabled) then
			if(WIM_Data.showMiniMap == false) then
				WIM_IconFrame:Hide();
			else
				WIM_IconFrame:Show();
				WIM_IconFrame:SetFrameStrata("LOW");
				WIM_IconFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT",WIM_Data.miniFreeMoving.left,WIM_Data.miniFreeMoving.top);
			end
		else
			WIM_Icon_UpdatePosition();
		end
		
	elseif(event == "GUILD_ROSTER_UPDATE") then
		WIM_LoadGuildList();
		WIM_AlreadyCheckedGuildRoster = true;
	elseif(event == "FRIENDLIST_SHOW" or event == "FRIENDLIST_UPDATE") then
		WIM_LoadFriendList();
	else
		if(WIM_AlreadyCheckedGuildRoster == false) then
			if(IsInGuild()) then GuildRoster(); end; --[update guild roster
		end
		WIM_ChatFrame_OnEvent(event);
	end
end

function WIM_PlayerCacheQueueEmpty()
	for _, info in WIM_PlayerCacheQueue do
		if info.attempts <= 5 then
			return false
		end
	end
	return true
end

WIM_Update_Elapsed = 0

function WIM_Update(elapsed)
	WIM_Update_Elapsed = WIM_Update_Elapsed + elapsed
	if WIM_Update_Elapsed < 1 then return end
	WIM_Update_Elapsed = 0

	-- WHO cooldown: 30s for Turtle WoW, 5s for vanilla. GMs skip cooldown but wait for response
	if not WIM_IsGM then
		local WHO_COOLDOWN = TURTLE_WOW_VERSION and 30 or 5
		if WIM_LastWhoSent and GetTime() - WIM_LastWhoSent < WHO_COOLDOWN then
			return
		end
		
		-- Don't send multiple WHOs if we're still waiting for results (non-GM only)
		if WIM_WhoScanInProgress then
			local timeout = 10
			if WIM_LastWhoSent and GetTime() - WIM_LastWhoSent < timeout then
				return
			end
			-- Timeout reached, allow retry
			WIM_DebugMsg("|cffffff00[WIM WHO]|r Timeout reached, allowing retry")
			WIM_WhoScanInProgress = false
		end
	else
		-- GM: Still need to wait for WHO response before sending next one
		if WIM_WhoScanInProgress then
			local timeout = 2 -- Short timeout for GMs
			if WIM_LastWhoSent and GetTime() - WIM_LastWhoSent < timeout then
				return
			end
			-- Timeout reached, allow retry
			WIM_DebugMsg("|cffffff00[WIM WHO]|r GM timeout reached, allowing retry")
			WIM_WhoScanInProgress = false
		end
	end
	
	-- Find next player to query (round-robin by lowest attempts)
	local nextPlayer = nil
	local lowestAttempts = 999
	local toRemove = {}
	
	for name, info in WIM_PlayerCacheQueue do
		-- Mark for removal after 5 failed attempts
		if info.attempts >= 5 then
			tinsert(toRemove, name)
		elseif info.attempts < lowestAttempts then
			lowestAttempts = info.attempts
			nextPlayer = name
		end
	end
	
	-- Remove failed players outside of loop
	for _, name in toRemove do
		WIM_DebugMsg("|cffff0000[WIM WHO]|r Removing " .. name .. " from queue (5 failed attempts)")
		WIM_PlayerCacheQueue[name] = nil
	end
	
	if nextPlayer then
		local info = WIM_PlayerCacheQueue[nextPlayer]
		WIM_DebugMsg("|cff00ffff[WIM WHO]|r Sending WHO for: " .. nextPlayer .. " (attempt " .. (info.attempts + 1) .. ")" .. (WIM_IsGM and " [GM]" or ""))
		WIM_WhoScanInProgress = true
		-- Only call SetWhoToUI for non-GMs
		if not WIM_IsGM then
			SetWhoToUI(1)
		end
		SendWho('n-"'..nextPlayer..'"')
		info.attempts = info.attempts + 1
		WIM_LastWhoSent = GetTime()
	end
end

function WIM_WhoInfo(name, callback)
	if WIM_PlayerCache[name] then
		WIM_DebugMsg("|cff00ff00[WIM WHO]|r " .. name .. " already in cache, skipping WHO")
		callback(WIM_PlayerCache[name])
	else
		WIM_DebugMsg("|cffffff00[WIM WHO]|r Adding " .. name .. " to queue")
		if not WIM_PlayerCacheQueue[name] then
			WIM_PlayerCacheQueue[name] = { callbacks = {}, attempts = 0 }
		end
		tinsert(WIM_PlayerCacheQueue[name].callbacks, callback)
	end
end

local function playerCheck(player, k)
	-- Always show messages immediately - WHO info will load async
	-- Queue WHO request for player info (class/race/level) if not cached
	WIM_DebugMsg("|cff00ffff[WIM]|r playerCheck: " .. player)
	
	-- Skip WHO check if player is a GM (we already have GM info)
	if WIM_PlayerCache[player] and WIM_PlayerCache[player].isGM then
		WIM_DebugMsg("|cff00ffff[WIM]|r Skipping WHO for GM: " .. player)
		return k()
	end
	
	if not WIM_PlayerCache[player] and not WIM_PlayerCacheQueue[player] then
		WIM_WhoInfo(player, function(info)
			-- Info loaded - update window if exists (but not for GMs)
			if WIM_Windows[player] and not (WIM_PlayerCache[player] and WIM_PlayerCache[player].isGM) then
				WIM_SetWhoInfo(player)
			end
		end)
	end
	return k()
end

function WIM_ChatFrame_OnEvent(event)
	if( WIM_Data.enableWIM == false) then
		return;
	end
	local msg = "";
	if((event == "CHAT_MSG_AFK" or event == "CHAT_MSG_DND") and WIM_Data.showAFK) then
		local afkType;
		if( event == "CHAT_MSG_AFK" ) then
			afkType = "AFK";
		else
			afkType = "DND";
		end
		msg = "<"..afkType.."> |Hplayer:"..arg2.."|h"..arg2.."|h: "..arg1;
		WIM_PostMessage(arg2, msg, 3);
		ChatEdit_SetLastTellTarget(ChatFrameEditBox,arg2);
	elseif event == 'CHAT_MSG_WHISPER' then
		local content, sender = arg1, arg2
		local isGMSender = arg6 == "GM" -- arg6 contains chat flags like "GM", "DEV", etc.
		
		-- Store GM status BEFORE playerCheck (so it's set when WIM_SetWhoInfo is called)
		if isGMSender then
			WIM_PlayerCache[sender] = WIM_PlayerCache[sender] or {}
			WIM_PlayerCache[sender].isGM = true
			-- Remove from WHO queue if present
			if WIM_PlayerCacheQueue[sender] then
				WIM_DebugMsg("|cffff00ff[WIM GM]|r Removing GM from WHO queue: " .. sender)
				WIM_PlayerCacheQueue[sender] = nil
			end
		end
		
		playerCheck(sender, function()
			-- Update window if GM and window exists
			if isGMSender and WIM_Windows[sender] then
				WIM_SetWhoInfo(sender)
			end
			if WIM_FilterResult(content) ~= 1 and WIM_FilterResult(content) ~= 2 then
				-- Include <GM> tag in displayed name if sender is GM
				local displayName = isGMSender and ("<GM>"..WIM_GetAlias(sender, true)) or WIM_GetAlias(sender, true)
				msg = "[|Hplayer:"..sender.."|h"..displayName.."|h]: "..content
				WIM_PostMessage(sender, msg, 1, sender, content)
			end
			ChatEdit_SetLastTellTarget(ChatFrameEditBox, sender)
		end)
	elseif event == 'CHAT_MSG_WHISPER_INFORM' then
		local content, receiver = arg1, arg2
		local isGMReceiver = arg6 == "GM" -- Check if receiver is GM
		
		WIM_DebugMsg("|cffff00ff[WIM GM]|r WHISPER_INFORM to: " .. receiver .. " | arg6: " .. tostring(arg6) .. " | isGM: " .. tostring(isGMReceiver))
		
		-- Store GM status BEFORE WIM_PostMessage
		if isGMReceiver then
			WIM_PlayerCache[receiver] = WIM_PlayerCache[receiver] or {}
			WIM_PlayerCache[receiver].isGM = true
			WIM_DebugMsg("|cffff00ff[WIM GM]|r Set isGM=true for: " .. receiver)
			-- Remove from WHO queue if present
			if WIM_PlayerCacheQueue[receiver] then
				WIM_DebugMsg("|cffff00ff[WIM GM]|r Removing GM from WHO queue: " .. receiver)
				WIM_PlayerCacheQueue[receiver] = nil
			end
			-- Update window if it already exists
			if WIM_Windows[receiver] then
				WIM_DebugMsg("|cffff00ff[WIM GM]|r Updating existing window for GM: " .. receiver)
				WIM_SetWhoInfo(receiver)
			end
		end
		
		WIM_WhisperedTo[receiver] = true
		if WIM_FilterResult(content) ~= 1 and WIM_FilterResult(content) ~= 2 then
			msg = "[|Hplayer:"..UnitName("player").."|h"..WIM_GetAlias(UnitName("player"), true).."|h]: "..content
			WIM_PostMessage(receiver, msg, 2, UnitName("player"), content)
		end
	elseif(event == "CHAT_MSG_SYSTEM") then
		local tstart,tfinish = string.find(arg1, "\'(%a+)\'");
		if(tstart ~= nil and tfinish ~= nil) then
			local user = string.sub(arg1, tstart+1, tfinish-1);
			user = string.gsub(user, "^%l", string.upper)
			tstart, tfinish = string.find(arg1, "playing");
			if(tstart ~= nil and WIM_Windows[user] ~= nil) then
				-- player not playing, can't whisper
				msg = "|Hplayer:"..user.."|h"..user.."|h is not currently playing!";
				WIM_PostMessage(user, msg, 4);
			end
		end
	end
end

function WIM_ChatFrameSupressor_OnEvent(event)
	if(WIM_Data.enableWIM == false) then
		return true;
	end
	local msg = "";
	if((event == "CHAT_MSG_AFK" or event == "CHAT_MSG_DND") and WIM_Data.showAFK) then
		if(WIM_Data.supressWisps) then
			return false; --[ false to supress from chatframe
		else
			return true;
		end	
	elseif(event == "CHAT_MSG_WHISPER") then
		if(WIM_Data.supressWisps) then
			if(WIM_FilterResult(arg1) == 1) then
				return true;
			else
				return false; --[ false to supress from chatframe
			end
		else
			if(WIM_FilterResult(arg1) == 2) then
				return false;
			else
				return true;
			end
		end
	elseif(event == "CHAT_MSG_WHISPER_INFORM") then
		if(WIM_Data.supressWisps) then
			if(WIM_FilterResult(arg1) == 1) then
				return true;
			else
				return false; --[ false to supress from chatframe
			end
		else
			if(WIM_FilterResult(arg1) == 2) then
				return false;
			else
				return true;
			end
		end
	elseif(event == "CHAT_MSG_SYSTEM") then
		local tstart,tfinish = string.find(arg1, "\'(%a+)\'");
		if(tstart ~= nil and tfinish ~= nil) then
			local user = string.sub(arg1, tstart+1, tfinish-1);
			user = string.gsub(user, "^%l", string.upper)
			tstart, tfinish = string.find(arg1, "playing");
			if(tstart ~= nil and WIM_Windows[user] ~= nil) then
				-- player not playing, can't whisper
				if(WIM_Data.supressWisps) then
					return false; --[ false to supress from chatframe
				else
					return true;
				end
			end
		end
		return true;
	end
	return true;
end


function WIM_PostMessage(user, msg, ttype, from, raw_msg, hotkeyFix)
	--[[
		ttype:
			1 - Wisper from someone
			2 - Wisper sent
			3 - System Message
			4 - Error Message
			5 - Show window... Do nothing else...
	]]--
	
	local f,chatBox
	local isNew = false
	if not WIM_Windows[user] then
		if getglobal('WIM_msgFrame'..user) then
			f = getglobal('WIM_msgFrame'..user)
		else
			f = CreateFrame('Frame', 'WIM_msgFrame'..user,UIParent, 'WIM_msgFrameTemplate')
		end
		WIM_SetWindowProps(f)
		WIM_Windows[user] = {
			frame = 'WIM_msgFrame'..user,
			newMSG = true, 
			is_visible = false, 
			last_msg = time(),
		}
		f.theUser = user
		getglobal('WIM_msgFrame'..user..'From'):SetText(WIM_GetAlias(user))
		WIM_Icon_AddUser(user)
		isNew = true
		WIM_SetWindowLocation(f)
		if WIM_Data.characterInfo.show then
			if table.getn(WIM_Split(user, '-')) == 2 then
				-- WIM_GetBattleWhoInfo(user)
			elseif WIM_PlayerCache[user] and WIM_PlayerCache[user].isGM then
				-- Skip WHO for GMs, just set GM info
				WIM_DebugMsg("|cffff00ff[WIM GM]|r PostMessage: Skipping WHO for GM: " .. user)
				WIM_SetWhoInfo(user)
			else
				WIM_DebugMsg("|cffff00ff[WIM GM]|r PostMessage: Sending WHO for: " .. user .. " | isGM: " .. tostring(WIM_PlayerCache[user] and WIM_PlayerCache[user].isGM))
				WIM_WhoInfo(user, function()
					-- Window may have been closed while waiting for WHO response
					if WIM_Windows[user] and not (WIM_PlayerCache[user] and WIM_PlayerCache[user].isGM) then
						WIM_SetWhoInfo(user)
					end
				end) 
			end
		end
		WIM_UpdateCascadeStep()
		WIM_DisplayHistory(user)
		if(WIM_History[user]) then
			getglobal(f:GetName()..'HistoryButton'):Show()
		end
	end
	f = getglobal('WIM_msgFrame'..user)
	chatBox = getglobal('WIM_msgFrame'..user..'ScrollingMessageFrame')
	msg = WIM_ConvertURLtoLinks(msg)
	WIM_Windows[user].newMSG = true
	WIM_Windows[user].last_msg = time()
	if ttype == 1 then
		WIM_PlaySoundWisp()
		WIM_AddToHistory(user, from, raw_msg, false)
		WIM_RecentListAdd(user)
		chatBox:AddMessage(WIM_getTimeStamp()..msg, WIM_Data.displayColors.wispIn.r, WIM_Data.displayColors.wispIn.g, WIM_Data.displayColors.wispIn.b)
	elseif ttype == 2 then
		WIM_AddToHistory(user, from, raw_msg, true)
		WIM_RecentListAdd(user)
		chatBox:AddMessage(WIM_getTimeStamp()..msg, WIM_Data.displayColors.wispOut.r, WIM_Data.displayColors.wispOut.g, WIM_Data.displayColors.wispOut.b)
	elseif ttype == 3 then
		chatBox:AddMessage(msg, WIM_Data.displayColors.sysMsg.r, WIM_Data.displayColors.sysMsg.g, WIM_Data.displayColors.sysMsg.b)
	elseif ttype == 4 then
		chatBox:AddMessage(msg, WIM_Data.displayColors.errorMsg.r, WIM_Data.displayColors.errorMsg.g, WIM_Data.displayColors.errorMsg.b)
	end
	if WIM_PopOrNot(isNew) or ttype == 2 or ttype == 5 then
		WIM_Windows[user].newMSG = false
		if ttype == 2 and WIM_Data.popOnSend == false then
			--[ do nothing, user prefers not to pop on send
		else
			f:Show()
			if ttype ==5 then
				f:Raise()
				getglobal(f:GetName()..'MsgBox'):SetFocus()
			end
		end
	end
	WIM_UpdateScrollBars(chatBox)
	WIM_Icon_DropDown_Update()
	if WIM_HistoryFrame:IsVisible() then
		WIM_HistoryViewNameScrollBar_Update()
		WIM_HistoryViewFiltersScrollBar_Update()
	end

	if hotkeyFix then
		local msgBox = getglobal(f:GetName()..'MsgBox')
		msgBox:SetScript('OnUpdate', function()
			this:SetText('')
			this:SetScript('OnUpdate', nil)
		end)
	end
end

function WIM_SetWindowLocation(theWin)
	local CascadeOffset_Left = 0;
	local CascadeOffset_Top = 0;

	if(WIM_Data.winCascade.enabled) then
		CascadeOffset_Left = WIM_CascadeDirection[WIM_Data.winCascade.direction].left;
		CascadeOffset_Top = WIM_CascadeDirection[WIM_Data.winCascade.direction].top;
	end
	
	theWin:SetPoint(
		"TOPLEFT",
		"UIParent",
		"BOTTOMLEFT",
		(WIM_Data.winLoc.left + WIM_CascadeStep*CascadeOffset_Left), 
		(WIM_Data.winLoc.top + WIM_CascadeStep*CascadeOffset_Top)
	);
end

function WIM_PopOrNot(isNew)
	if(isNew == true and WIM_Data.popNew == true) then
		if(WIM_Data.popCombat and UnitAffectingCombat("player")) then
			return false;
		else
			return true;
		end
	elseif(WIM_Data.popNew == true and WIM_Data.popUpdate == true) then
		if(WIM_Data.popCombat and UnitAffectingCombat("player")) then
			return false;
		else
			return true;
		end
	else
		return false;
	end
end


function WIM_UpdateScrollBars(smf)
	local parentName = smf:GetParent():GetName();
	if(smf:AtTop()) then
		getglobal(parentName.."ScrollUp"):Disable();
	else
		getglobal(parentName.."ScrollUp"):Enable();
	end
	if(smf:AtBottom()) then
		getglobal(parentName.."ScrollDown"):Disable();
	else
		getglobal(parentName.."ScrollDown"):Enable();
	end
end

function WIM_isLinkURL(link)
	if (strsub(link, 1, 3) == "url") then
		return true;
	else
		return false;
	end
end

function WIM_DisplayURL(link)
	local theLink = "";
	if (string.len(link) > 4) and (string.sub(link,1,4) == "url:") then
		theLink = string.sub(link,5, string.len(link));
	end
	--show UI to show url so it can be copied
	if(theLink) then
		WIM_urlCopyUrlBox:SetText(theLink);
		WIM_urlCopy:Show();
		WIM_urlCopyUrlBox:HighlightText(0);
	end
end

function WIM_ConvertURLtoLinks(text)
	local preLink, midLink, postLink;
	preLink = "|Hurl:";
	midLink = "|h|cff"..WIM_RGBtoHex(WIM_Data.displayColors.webAddress.r, WIM_Data.displayColors.webAddress.g, WIM_Data.displayColors.webAddress.b);
	postLink = "|h|r";
	text = string.gsub(text, "(%a+://[%w_/%.%?%%=~&-]+)", preLink.."%1"..midLink.."%1"..postLink);
	return text;
end

function WIM_SlashCommand(msg)
	if(msg == "" or msg == nil) then
		WIM_Options:Show();
	elseif(msg == "reset") then
		WIM_Data = WIM_DeepCopy(WIM_Data_DEFAULTS);
	elseif(msg == "clear history") then
		WIM_History = {};
	elseif(msg == "reset filters") then
		WIM_LoadDefaultFilters();
	elseif(msg == "history") then
		WIM_HistoryFrame:Show();
	elseif(msg == "help") then
		WIM_Help:Show();
	end
end


function WIM_Icon_Move(toDegree)
	WIM_Data.iconPosition = toDegree;
	WIM_Icon_UpdatePosition();
end

function WIM_Icon_UpdatePosition()
	if(WIM_Data.showMiniMap == false) then
		WIM_IconFrame:Hide();
	else
		if(WIM_Data.miniFreeMoving.enabled == false) then
			WIM_IconFrame:SetPoint(
				"TOPLEFT",
				"Minimap",
				"TOPLEFT",
				54 - (78 * cos(WIM_Data.iconPosition)),
				(78 * sin(WIM_Data.iconPosition)) - 55
			);
		end
		WIM_IconFrame:Show();
	end
end


function WIM_SetWindowProps(theWin)
	if(WIM_Data.showShortcutBar) then
		getglobal(theWin:GetName().."ShortcutFrame"):Show();
		local tHeight = WIM_Data.winSize.height;
		if(tHeight < 240) then
			tHeight = 240;
		end
		theWin:SetHeight(tHeight);
	else
		getglobal(theWin:GetName().."ShortcutFrame"):Hide();
		theWin:SetHeight(WIM_Data.winSize.height);
	end
	theWin:SetWidth(WIM_Data.winSize.width);
	theWin:SetScale(WIM_Data.windowSize);
	theWin:SetAlpha(WIM_Data.windowAlpha);
	getglobal(theWin:GetName().."ScrollingMessageFrame"):SetFont("Fonts\\ARIALN.TTF",WIM_Data.fontSize);
	getglobal(theWin:GetName().."ScrollingMessageFrame"):SetAlpha(1);
	getglobal(theWin:GetName().."MsgBox"):SetAlpha(1);
	getglobal(theWin:GetName().."ShortcutFrame"):SetAlpha(1);
	if(WIM_Data.useEscape) then
		WIM_AddEscapeWindow(theWin);
	else
		WIM_RemoveEscapeWindow(theWin);
	end
	--WIM_SetTabFrameProps();
end


function WIM_AddEscapeWindow(theWin)
	for i=1, table.getn(UISpecialFrames) do 
		if(UISpecialFrames[i] == theWin:GetName()) then
			return;
		end
	end
	tinsert(UISpecialFrames,theWin:GetName());
end

function WIM_RemoveEscapeWindow(theWin)
	for i=1, table.getn(UISpecialFrames) do 
		if(UISpecialFrames[i] == theWin:GetName()) then
			table.remove(UISpecialFrames, i);
			return;
		end
	end
end

function WIM_SetAllWindowProps()
	for key in WIM_Windows do
		WIM_SetWindowProps(getglobal(WIM_Windows[key].frame));
	end
end


function WIM_Icon_ToggleDropDown()
	if(WIM_ConversationMenu:IsVisible()) then
		WIM_ConversationMenu:Hide();
	else
		WIM_ConversationMenu:ClearAllPoints();
		WIM_ConversationMenu:Show();
		WIM_ConversationMenu:SetPoint("TOPRIGHT", WIM_IconFrame, "BOTTOMLEFT", 5, 5);
	end
end

function WIM_Icon_DropDown_Update()
	
	local tList = {}
	local tListActivity = {}
	local tCount = 0
	for key in WIM_IconItems do
		table.insert(tListActivity, key)
		tCount = tCount + 1
	end
	
	--[first get a sorted list of users by most recent activity
	table.sort(tListActivity, WIM_Icon_SortByActivity)
	--[account for only the allowable amount of active users
	for i=1,table.getn(tListActivity) do
		if i <= WIM_MaxMenuCount then
			table.insert(tList, tListActivity[i])
		end
	end
	
	--Initialize Menu
	for i=1,20 do 
		getglobal("WIM_ConversationMenuTellButton"..i.."Close"):Show()
		getglobal("WIM_ConversationMenuTellButton"..i):Enable()
		getglobal("WIM_ConversationMenuTellButton"..i):Hide()
	end
	
	
	WIM_NewMessageCount = 0;
	
	if tCount == 0 then
		getglobal("WIM_ConversationMenuTellButton1Close"):Hide()
		getglobal("WIM_ConversationMenuTellButton1"):Disable()
		getglobal("WIM_ConversationMenuTellButton1"):SetText(WIM_L_NONEC)
		getglobal("WIM_ConversationMenuTellButton1"):Show()
	else
		if WIM_Data.sortAlpha then
			table.sort(tList)
		end
		WIM_NewMessageFlag = false
		for i=1,table.getn(tList) do
			if WIM_Windows[tList[i]].newMSG and WIM_Windows[tList[i]].is_visible == false then
				WIM_IconItems[tList[i]].color = "|cff"..WIM_RGBtoHex(77/255, 147/255, 224/255)
				WIM_NewMessageFlag = true
				WIM_NewMessageCount = WIM_NewMessageCount + 1
			else
				WIM_IconItems[tList[i]].color = "|cffffffff"
			end
			getglobal("WIM_ConversationMenuTellButton"..i):SetText(WIM_IconItems[tList[i]].color..WIM_GetAlias(WIM_IconItems[tList[i]].text, true))
			getglobal("WIM_ConversationMenuTellButton"..i).theUser = WIM_IconItems[tList[i]].text
			getglobal("WIM_ConversationMenuTellButton"..i).value = WIM_IconItems[tList[i]].value
			getglobal("WIM_ConversationMenuTellButton"..i):Show()
		end
	end
	
	--Set Height of Conversation Menu depending on message count
	local ConvoMenuHeight = 60
	local CMH_Delta = 16 * (table.getn(tList)-1)
	if CMH_Delta < 0 then CMH_Delta = 0 end
	ConvoMenuHeight = ConvoMenuHeight + CMH_Delta
	WIM_ConversationMenu:SetHeight(ConvoMenuHeight)
	
	--Minimap icon
	if WIM_Data.enableWIM == true then
		if WIM_NewMessageFlag == true then
			WIM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\WIM\\Images\\miniEnabled")
		else
			WIM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\WIM\\Images\\miniDisabled")
		end
	else
		--show wim disabled icon
		WIM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\WIM\\Images\\miniOff")
	end
end


function WIM_ConversationMenu_OnUpdate(elapsed)
	if this.isCounting then
		this.timeElapsed = this.timeElapsed + elapsed
		if this.timeElapsed > 1 then
			this:Hide()
			this.timeElapsed = 0
			this.isCounting = false
		end
	end
end

function WIM_Icon_AddUser(theUser)
	UIDROPDOWNMENU_INIT_MENU = "WIM_Options_DropDown"
	UIDROPDOWNMENU_OPEN_MENU = UIDROPDOWNMENU_INIT_MENU
	local info = {}
	info.text = theUser;
	info.justifyH = "LEFT"
	info.isTitle = nil
	info.notCheckable = 1
	info.value = WIM_Windows[theUser].frame
	info.func = WIM_Icon_PlayerClick
	WIM_IconItems[theUser] = info
	WIM_Icon_DropDown_Update()
end

function WIM_Icon_PlayerClick()
	if(this.value ~= nil) then
		getglobal(this.value):Show()
		--[local user = getglobal(this.value.."From"):GetText();
		local user = getglobal(this.value).theUser
		WIM_Windows[user].newMSG = false
		WIM_Windows[user].is_visible = true
		WIM_Icon_DropDown_Update()
	end
end

function WIM_Icon_OnUpdate(elapsedTime)
	if WIM_NewMessageFlag == false then
		this.TimeSinceLastUpdate = 0
		if WIM_Icon_NewMessageFlash:IsVisible() then
			WIM_Icon_NewMessageFlash:Hide()
		end
		return
	end

	this.TimeSinceLastUpdate = this.TimeSinceLastUpdate + elapsedTime 	

	while this.TimeSinceLastUpdate > WIM_Icon_UpdateInterval do
		if WIM_Icon_NewMessageFlash:IsVisible() then
			WIM_Icon_NewMessageFlash:Hide()
		else
			WIM_Icon_NewMessageFlash:Show()
		end
		this.TimeSinceLastUpdate = this.TimeSinceLastUpdate - WIM_Icon_UpdateInterval
	end
end

function WIM_UpdateCascadeStep()
		WIM_CascadeStep = WIM_CascadeStep + 1
		if WIM_CascadeStep > 10 then
			WIM_CascadeStep = 0
		end
end

function WIM_PlaySoundWisp()
	if WIM_Data.playSoundWisp == true then
		PlaySoundFile("Interface\\AddOns\\WIM\\Sounds\\wisp.wav")
	end
end

function WIM_Icon_SortByActivity(user1, user2)
	return WIM_Windows[user1].last_msg > WIM_Windows[user2].last_msg
end

function WIM_RGBtoHex(r,g,b)
	return string.format ("%.2x%.2x%.2x",r*255,g*255,b*255)
end

function WIM_Icon_OnEnter()
	GameTooltip:SetOwner(this, "ANCHOR_LEFT");
	GameTooltip:SetText("WIM v"..WIM_VERSION.."              ");
	GameTooltip:AddDoubleLine("Conversation Menu", "Left-Click", 1,1,1,1,1,1);
	GameTooltip:AddDoubleLine("Show New Messages", "Right-Click", 1,1,1,1,1,1);
	GameTooltip:AddDoubleLine("WIM Options", "/wim", 1,1,1,1,1,1);
end

function WIM_ShowNewMessages()
	for key in WIM_Windows do
		if(WIM_Windows[key].newMSG == true) then
			getglobal(WIM_Windows[key].frame):Show();
			WIM_Windows[key].newMSG = false;
		end
	end
	WIM_Icon_DropDown_Update();
end

function WIM_ShowAll()
	for key in WIM_Windows do
		getglobal(WIM_Windows[key].frame):Show();
	end
end

function WIM_HideAll()
	for key in WIM_Windows do
		getglobal(WIM_Windows[key].frame):Hide();
	end
end

function WIM_CloseAllConvos()
	local keys = {}
	for key in WIM_Windows do
		tinsert(keys, key)
	end
	for _, key in ipairs(keys) do
		WIM_CloseConvo(key)
	end
end

function WIM_CloseConvo(theUser)
	if(WIM_Windows[theUser] == nil) then return; end; --[ fail silently
	
	getglobal(WIM_Windows[theUser].frame):Hide();
	getglobal(WIM_Windows[theUser].frame.."ScrollingMessageFrame"):Clear();
	getglobal(WIM_Windows[theUser].frame.."ClassIcon"):SetTexture("Interface\\AddOns\\WIM\\Images\\classBLANK");
	getglobal(WIM_Windows[theUser].frame.."CharacterDetails"):SetText("");
	WIM_Windows[theUser] = nil;
	WIM_IconItems[theUser] = nil;
	
	WIM_Icon_DropDown_Update();
end

function WIM_InitClassProps()
	WIM_ClassIcons[WIM_LOCALIZED_DRUID] 	= "Interface\\AddOns\\WIM\\Images\\classDRUID";
	WIM_ClassIcons[WIM_LOCALIZED_HUNTER] 	= "Interface\\AddOns\\WIM\\Images\\classHUNTER";
	WIM_ClassIcons[WIM_LOCALIZED_MAGE]	 	= "Interface\\AddOns\\WIM\\Images\\classMAGE";
	WIM_ClassIcons[WIM_LOCALIZED_PALADIN] 	= "Interface\\AddOns\\WIM\\Images\\classPALADIN";
	WIM_ClassIcons[WIM_LOCALIZED_PRIEST] 	= "Interface\\AddOns\\WIM\\Images\\classPRIEST";
	WIM_ClassIcons[WIM_LOCALIZED_ROGUE] 	= "Interface\\AddOns\\WIM\\Images\\classROGUE";
	WIM_ClassIcons[WIM_LOCALIZED_SHAMAN] 	= "Interface\\AddOns\\WIM\\Images\\classSHAMAN";
	WIM_ClassIcons[WIM_LOCALIZED_WARLOCK] 	= "Interface\\AddOns\\WIM\\Images\\classWARLOCK";
	WIM_ClassIcons[WIM_LOCALIZED_WARRIOR] 	= "Interface\\AddOns\\WIM\\Images\\classWARRIOR";

	local function getColor(colorObject)
		local r = colorObject.r * 255
		local g = colorObject.g * 255
		local b = colorObject.b * 255
		return format("%02x%02x%02x", r, g, b)
	end

	WIM_ClassColors[WIM_LOCALIZED_DRUID]	= getColor(RAID_CLASS_COLORS["DRUID"]);
	WIM_ClassColors[WIM_LOCALIZED_HUNTER]	= getColor(RAID_CLASS_COLORS["HUNTER"]);
	WIM_ClassColors[WIM_LOCALIZED_MAGE]		= getColor(RAID_CLASS_COLORS["MAGE"]);
	WIM_ClassColors[WIM_LOCALIZED_PALADIN]	= getColor(RAID_CLASS_COLORS["PALADIN"]);
	WIM_ClassColors[WIM_LOCALIZED_PRIEST]	= getColor(RAID_CLASS_COLORS["PRIEST"]);
	WIM_ClassColors[WIM_LOCALIZED_ROGUE]	= getColor(RAID_CLASS_COLORS["ROGUE"]);
	WIM_ClassColors[WIM_LOCALIZED_SHAMAN]	= getColor(RAID_CLASS_COLORS["SHAMAN"]);
	WIM_ClassColors[WIM_LOCALIZED_WARLOCK]	= getColor(RAID_CLASS_COLORS["WARLOCK"]);
	WIM_ClassColors[WIM_LOCALIZED_WARRIOR]	= getColor(RAID_CLASS_COLORS["WARRIOR"]);
end

function WIM_UserWithClassColor(theUser)
	if not WIM_PlayerCache[theUser] or WIM_PlayerCache[theUser].class == "" then
		return theUser;
	else
		if(WIM_ClassColors[WIM_PlayerCache[theUser].class]) then
			return "|cff"..WIM_ClassColors[WIM_PlayerCache[theUser].class]..WIM_GetAlias(theUser);
		else
			return WIM_GetAlias(theUser);
		end
	end
end

function WIM_SetWhoInfo(theUser)
	local classIcon = getglobal(WIM_Windows[theUser].frame.."ClassIcon");
	
	-- Check if user is a GM - show GM icon instead of class icon
	if WIM_PlayerCache[theUser] and WIM_PlayerCache[theUser].isGM then
		classIcon:SetTexture("Interface\\AddOns\\WIM\\Images\\Blizzard");
		-- Update name with GM tag if not already present
		local currentName = getglobal(WIM_Windows[theUser].frame.."From"):GetText()
		if currentName and not string.find(currentName, "<GM>") then
			getglobal(WIM_Windows[theUser].frame.."From"):SetText("|cff00ccff<GM>|r "..WIM_GetAlias(theUser));
		end
		-- Show GM in details instead of class info
		getglobal(WIM_Windows[theUser].frame.."CharacterDetails"):SetText("|cff00ccff"..WIM_L_GAMEMASTER.."|r");
		return; -- Don't show class info for GMs
	elseif(WIM_Data.characterInfo.classIcon and WIM_PlayerCache[theUser] and WIM_ClassIcons[WIM_PlayerCache[theUser].class]) then
		classIcon:SetTexture(WIM_ClassIcons[WIM_PlayerCache[theUser].class]);
		if(WIM_Data.characterInfo.classColor) then	
			getglobal(WIM_Windows[theUser].frame.."From"):SetText(WIM_UserWithClassColor(theUser));
		end
		if(WIM_Data.characterInfo.details) then	
			local tGuild = "";
			if(WIM_PlayerCache[theUser].guild ~= "") then
				tGuild = "<"..WIM_PlayerCache[theUser].guild.."> ";
			end
			getglobal(WIM_Windows[theUser].frame.."CharacterDetails"):SetText("|cffffffff"..tGuild..WIM_PlayerCache[theUser].level.." "..WIM_PlayerCache[theUser].race.." "..WIM_PlayerCache[theUser].class.."|r");
		end
	else
		classIcon:SetTexture("Interface\\AddOns\\WIM\\Images\\classBLANK");
		if(WIM_Data.characterInfo.classColor and WIM_PlayerCache[theUser]) then	
			getglobal(WIM_Windows[theUser].frame.."From"):SetText(WIM_UserWithClassColor(theUser));
		end
		if(WIM_Data.characterInfo.details and WIM_PlayerCache[theUser]) then	
			local tGuild = "";
			if(WIM_PlayerCache[theUser].guild ~= "") then
				tGuild = "<"..WIM_PlayerCache[theUser].guild.."> ";
			end
			getglobal(WIM_Windows[theUser].frame.."CharacterDetails"):SetText("|cffffffff"..tGuild..WIM_PlayerCache[theUser].level.." "..WIM_PlayerCache[theUser].race.." "..WIM_PlayerCache[theUser].class.."|r");
		end
	end
end

function WIM_getTimeStamp()
	if(WIM_Data.showTimeStamps) then
		return "|cff"..WIM_RGBtoHex(WIM_Data.displayColors.sysMsg.r, WIM_Data.displayColors.sysMsg.g, WIM_Data.displayColors.sysMsg.b)..date("%H:%M").."|r ";
	else
		return "";
	end
end

function WIM_Bindings_EnableWIM()
	WIM_SetWIM_Enabled(not WIM_Data.enableWIM);
end

function WIM_SetWIM_Enabled(YesOrNo)
	WIM_Data.enableWIM = YesOrNo
	WIM_Icon_DropDown_Update();
end

function WIM_LoadShortcutFrame()
	local tButtons = {
		{
			icon = "Interface\\Icons\\Ability_Hunter_AimedShot",
			cmd		= "target",
			tooltip = WIM_L_TARGET
		},
		{
			icon = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
			cmd		= "invite",
			tooltip = WIM_L_INVITE
		},
		{
			icon = "Interface\\Icons\\INV_Misc_Bag_10_Blue",
			cmd		= "trade",
			tooltip = WIM_L_TRADE
		},
		{
			icon = "Interface\\Icons\\INV_Helmet_44",
			cmd		= "inspect",
			tooltip = WIM_L_INSPECT
		},
		{
			icon = "Interface\\Icons\\Ability_Physical_Taunt",
			cmd		= "ignore",
			tooltip = WIM_L_IGNORE
		},
	};
	for i=1,5 do
		getglobal(this:GetName().."ShortcutFrameButton"..i.."Icon"):SetTexture(tButtons[i].icon);
		getglobal(this:GetName().."ShortcutFrameButton"..i).cmd = tButtons[i].cmd;
		getglobal(this:GetName().."ShortcutFrameButton"..i).tooltip = tButtons[i].tooltip;
	end
	getglobal(this:GetName().."ShortcutFrame"):SetScale(.75);
end

function WIM_ShorcutButton_Clicked()
	local cmd = this.cmd;
	local theUser = this:GetParent():GetParent().theUser;
	if(cmd == "target") then
		TargetByName(theUser, true)
	elseif(cmd == "invite") then
		InviteByName(theUser)
	elseif(cmd == "trade") then
		TargetByName(theUser, true)
		InitiateTrade("target")
	elseif(cmd == "inspect") then
		TargetByName(theUser, true)
		InspectUnit("target")
	elseif(cmd == "ignore") then
		getglobal(this:GetParent():GetParent():GetName().."IgnoreConfirm"):Show();
	end
end

function WIM_GetAlias(theUser, nameOnly)
	if(WIM_Data.enableAlias and WIM_Alias[theUser] ~= nil) then
		if(WIM_Data.aliasAsComment) then
			if(nameOnly) then
				return theUser;
			else
				return theUser.." |cffffffff- "..WIM_Alias[theUser].."|r";
			end
		else
			return WIM_Alias[theUser];
		end
	else
		return theUser;
	end
end


function WIM_FilterResult(theMSG)
	if(WIM_Data.enableFilter) then
		local key, a, b;
		for key in WIM_Filters do
			if(strfind(strlower(theMSG), strlower(key)) ~= nil) then
				if(WIM_Filters[key] == "Ignore") then
					return 1;
				elseif(WIM_Filters[key] == "Block") then
					return 2;
				end
			end
		end
		return 0;
	else
		return 0;
	end
end

function WIM_CanRecordUser(theUser)
	if(WIM_Data.historySettings.recordEveryone) then
		return true;
	else
		if(WIM_Data.historySettings.recordFriends and WIM_FriendList[theUser]) then
			return true;
		elseif(WIM_Data.historySettings.recordGuild and WIM_GuildList[theUser]) then
			return true;
		end
	end
	return false;
end

function WIM_AddToHistory(theUser, userFrom, theMessage, isMsgIn)
	local tmpEntry = {};
	if(WIM_Data.enableHistory) then --[if history is enabled
		if(WIM_CanRecordUser(theUser)) then --[if record user
			getglobal(WIM_Windows[theUser].frame.."HistoryButton"):Show();
			tmpEntry["stamp"] = time();
			tmpEntry["date"] = date(WIM_L_DATE_FORMAT);
			tmpEntry["time"] = date("%H:%M");
			tmpEntry["msg"] = WIM_ConvertURLtoLinks(theMessage);
			tmpEntry["from"] = userFrom;
			-- Save GM status in history
			if WIM_PlayerCache[userFrom] and WIM_PlayerCache[userFrom].isGM then
				tmpEntry["isGM"] = true;
			end
			if(isMsgIn) then
				tmpEntry["type"] = 2;
			else
				tmpEntry["type"] = 1;
			end
			if(WIM_History[theUser] == nil) then
				WIM_History[theUser] = {};
			end
			table.insert(WIM_History[theUser], tmpEntry);
			
			if(WIM_Data.historySettings.maxMsg.enabled) then
				local tOver = table.getn(WIM_History[theUser]) - WIM_Data.historySettings.maxMsg.count;
				if(tOver > 0) then
					for i = 1, tOver do 
						table.remove(WIM_History[theUser], 1);
					end
				end
			end
			if(WIM_Options:IsVisible()) then
				WIM_HistoryScrollBar_Update();
			end
		end
	end
end

function WIM_SortHistory(a, b)
	if(a.stamp < b.stamp) then
		return true;
	else
		return false;
	end
end

function WIM_DisplayHistory(theUser)
	if(WIM_History[theUser] and WIM_Data.enableHistory and WIM_Data.historySettings.popWin.enabled) then
		table.sort(WIM_History[theUser], WIM_SortHistory);
		for i=getn(WIM_History[theUser])-WIM_Data.historySettings.popWin.count+1, getn(WIM_History[theUser]) do
			if(WIM_History[theUser][i]) then
				-- Include <GM> tag if sender was GM
				local displayName = WIM_GetAlias(WIM_History[theUser][i].from, true);
				if WIM_History[theUser][i].isGM then
					displayName = "<GM>"..displayName;
				end
				local msg = "|Hplayer:"..WIM_History[theUser][i].from.."|h["..displayName.."]|h: "..WIM_History[theUser][i].msg;
				if(WIM_Data.showTimeStamps) then
					msg = WIM_History[theUser][i].time.." "..msg;
				end
				if(WIM_History[theUser][i].type == 1) then
					getglobal("WIM_msgFrame"..theUser.."ScrollingMessageFrame"):AddMessage(msg, WIM_Data.historySettings.colorIn.r, WIM_Data.historySettings.colorIn.g, WIM_Data.historySettings.colorIn.b);
				elseif(WIM_History[theUser][i].type == 2) then
					getglobal("WIM_msgFrame"..theUser.."ScrollingMessageFrame"):AddMessage(msg, WIM_Data.historySettings.colorOut.r, WIM_Data.historySettings.colorOut.g, WIM_Data.historySettings.colorOut.b);
				end
			end
		end
	end
end

function WIM_LoadDefaultFilters()
	WIM_Filters = {};
	-- Boss mod addon communication (hide from WIM, pass to chat)
	WIM_Filters["^LVBM"] 					= "Ignore";
	WIM_Filters["^YOU ARE BEING WATCHED!"] 	= "Ignore";
	WIM_Filters["^YOU ARE MARKED!"] 		= "Ignore";
	WIM_Filters["^YOU ARE CURSED!"] 		= "Ignore";
	WIM_Filters["^YOU HAVE THE PLAGUE!"] 	= "Ignore";
	WIM_Filters["^YOU ARE BURNING!"] 		= "Ignore";
	WIM_Filters["^YOU ARE THE BOMB!"] 		= "Ignore";
	WIM_Filters["VOLATILE INFECTION"] 		= "Ignore";

	WIM_FilteringScrollBar_Update();
end

function WIM_LoadGuildList()
	WIM_GuildList = {};
	if(IsInGuild()) then
		for i=1, GetNumGuildMembers(true) do 
			local name, junk = GetGuildRosterInfo(i);
			if(name) then
				WIM_GuildList[name] = "1"; --[set place holder for quick lookup
			end
		end
	end
end

function WIM_LoadFriendList()
	WIM_FriendList = {};
	for i=1, GetNumFriends() do 
		local name, junk = GetFriendInfo(i);
		if(name) then
			WIM_FriendList[name] = "1"; --[set place holder for quick lookup
		end
	end
end

function WIM_HistoryPurge()
	if(WIM_Data.historySettings.autoDelete.enabled) then
		local delCount = 0;
		local eldestTime = time() - (60 * 60 * 24 * WIM_Data.historySettings.autoDelete.days);
		local keys = {}
		for key in WIM_History do
			tinsert(keys, key)
		end
		for _, key in ipairs(keys) do
			if(WIM_History[key][1]) then
				while(WIM_History[key][1].stamp < eldestTime) do
					table.remove(WIM_History[key], 1);
					delCount = delCount + 1;
					if(table.getn(WIM_History[key]) == 0) then
						WIM_History[key] = nil;
						break;
					end
				end
			end
		end
		if(delCount > 0) then
			DEFAULT_CHAT_FRAME:AddMessage(format(WIM_L_PURGEDMESSAGES, delCount));
		end
	end
end

function WIM_ToggleWindow_OnUpdate(elapsedTime)

	WIM_ToggleWindow_Timer = WIM_ToggleWindow_Timer + elapsedTime; 	

	while (WIM_ToggleWindow_Timer > 1) do
		WIM_ToggleWindow:Hide();
		WIM_ToggleWindow_Timer = 0;
	end
end

function WIM_RecentListAdd(theUser)
	for i=1, table.getn(WIM_RecentList) do 
		if(string.upper(WIM_RecentList[i]) == string.upper(theUser)) then
			table.remove(WIM_RecentList, i);
			break;
		end
	end
	table.insert(WIM_RecentList, 1, theUser);
end

function WIM_ToggleWindow_Toggle()
	if(table.getn(WIM_RecentList) == 0) then
		return;
	end
	
	if(WIM_RecentList[WIM_ToggleWindow_Index] == nil) then
		WIM_ToggleWindow_Index = 1;
	end
	
	WIM_ToggleWindowUser:SetText(WIM_GetAlias(WIM_RecentList[WIM_ToggleWindow_Index], true));
	WIM_ToggleWindow.theUser = WIM_RecentList[WIM_ToggleWindow_Index];
	WIM_ToggleWindowCount:SetText(format(WIM_L_RECENTCONV, WIM_ToggleWindow_Index, table.getn(WIM_RecentList)));
	if(WIM_Windows[WIM_RecentList[WIM_ToggleWindow_Index]]) then
		if(WIM_Windows[WIM_RecentList[WIM_ToggleWindow_Index]].newMSG) then
			WIM_ToggleWindowStatus:SetText(WIM_L_NEWMESSAGE);
			WIM_ToggleWindowIconNew:Show();
			WIM_ToggleWindowIconRead:Hide();
		else
			WIM_ToggleWindowStatus:SetText(WIM_L_NONEWMESS);
			WIM_ToggleWindowIconRead:Show();
			WIM_ToggleWindowIconNew:Hide();
		end
	else
		WIM_ToggleWindowStatus:SetText(WIM_L_CONVCLOSED);
		WIM_ToggleWindowIconRead:Show();
		WIM_ToggleWindowIconNew:Hide();
	end
	WIM_ToggleWindow_Timer = 0;
	WIM_ToggleWindow:Show();
	WIM_ToggleWindow_Index = WIM_ToggleWindow_Index + 1;
end

function WIM_Split(theString, thePattern)
	local t = {n = 0}
	local fpat = "(.-)"..thePattern
	local last_end = 1
	local s,e,cap = string.find(theString, fpat, 1)
	while s ~= nil do
		if s~=1 or cap~="" then
		table.insert(t,cap)
		end
		last_end = e+1
		s,e,cap = string.find(theString, fpat, last_end)
	end
	if last_end<=string.len(theString) then
		cap = string.sub(theString,last_end)
		table.insert(t,cap)
	end
	return t
end

function WIM_SetTabFrameProps()
	WIM_TabFrame:SetScale(WIM_Data.windowSize * 1);
	WIM_TabFrame:SetAlpha(WIM_Data.windowAlpha);
end

function WIM_UpdateTabs()
	local tabs = {};
	local offset = 0;
	
	for key in WIM_IconItems do
		table.insert(tabs, key);
	end
	
	for i=1,10 do 
		local tab = getglobal("WIM_TabFrameTab"..i);
		tab:Hide();
		if(tabs[i+offset]) then
			tab:SetText(WIM_GetAlias(tabs[i+offset], true));
			tab:Show();
			tab.theUser=tabs[i+offset];
		else
			tab:Hide();
			tab.theUser="";
		end
	end
	
end

function WIM_WindowOnShow()
end

function WIM_GetTabByUser(theUser)
	for i=1,10 do 
		local tab = getglobal("WIM_TabFrameTab"..i);
		if(string.upper(theUser) == string.upper(tab.theUser)) then
			return tab;
		end
	end
	return nil;
end

function WIM_TabSetSelected(theUser)
	for i=1,10 do 
		local tab = getglobal("WIM_TabFrameTab"..i);
		if(string.upper(theUser) == string.upper(tab.theUser)) then
			PanelTemplates_SelectTab(tab);
		else
			PanelTemplates_DeselectTab(tab);
		end
	end
end
