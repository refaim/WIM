WIM_HooksInstalled = false;


function WIM_FriendsFrame_SendMessage()
	local name = GetFriendInfo(FriendsFrame.selectedFriend);
	WIM_PostMessage(name, "", 5, "", "");
end

function WIM_ChatEdit_ParseText(editBox, send)
	if not WIM_Data.hookWispParse then
		return WIM_ChatEdit_ParseText_orig(editBox, send)
	end

	local target
	local msgText = ''

	local _, _, command, rest = strfind(editBox:GetText(), '^(/%S+)%s*(.*)')
	if command then
		command = strupper(command)
		rest = rest or ''
		local i = 1
		while true do
			if getglobal('SLASH_WHISPER'..i) and command == strupper(TEXT(getglobal('SLASH_WHISPER'..i))) and rest ~= '' then
				local _, _, namepart, textpart = strfind(rest, '^(%S+)%s*(.*)')
				if namepart then
					target = gsub(strlower(namepart), '^%l', strupper)
					msgText = textpart or ''
				end
				break
			elseif getglobal('SLASH_REPLY'..i) and command == strupper(TEXT(getglobal('SLASH_REPLY'..i))) and ChatEdit_GetLastTellTarget(editBox) ~= '' then
				target = ChatEdit_GetLastTellTarget(editBox)
				msgText = rest or ''
				break
			elseif not getglobal('SLASH_WHISPER'..i) and not getglobal('SLASH_REPLY'..i) then
				break
			end
			i = i + 1
		end
	end

	if target then
		WIM_PostMessage(target, '', 5, '', '')
		if msgText ~= '' then
			-- Message text present (e.g. /w Name text or macro): let WoW send it
			return WIM_ChatEdit_ParseText_orig(editBox, send)
		else
			-- No message text (just /w Name): open WIM window only
			editBox:SetText('')
			editBox:Hide()
		end
	else
		return WIM_ChatEdit_ParseText_orig(editBox, send)
	end
end

function WIM_ChatFrame_ReplyTell(chatFrame)
	chatFrame = chatFrame or DEFAULT_CHAT_FRAME
	local target = ChatEdit_GetLastTellTarget(chatFrame.editBox)
	if target ~= '' then
		WIM_PostMessage(target, '', 5, '', '', true)
	end
end


function WIM_FriendsFrame_OnEvent()
    if event == 'WHO_LIST_UPDATE' then
    	if WIM_WhoScanInProgress then
			local numResults = GetNumWhoResults()
			if WIM_Debug then
				local timestamp = date("%H:%M:%S")
				DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM WHO]|r WHO_LIST_UPDATE received, results: " .. numResults)
			end

			-- Check results against our queue
			for i=1,numResults do
				local name, guild, level, race, class, zone = GetWhoInfo(i)

				if WIM_PlayerCacheQueue[name] then
					if WIM_Debug then
						local timestamp = date("%H:%M:%S")
						DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM WHO]|r Found: " .. name .. " - " .. tostring(level) .. " " .. tostring(race) .. " " .. tostring(class))
					end
					local callbacks = WIM_PlayerCacheQueue[name].callbacks
					WIM_PlayerCacheQueue[name] = nil

					WIM_PlayerCache[name] = {
						class = class,
						level = level,
						race = race,
						guild = guild,
					}

					for _, callback in callbacks do
						callback(WIM_PlayerCache[name])
					end
				end
			end

			if WIM_PlayerCacheQueueEmpty() then
				WIM_WhoScanInProgress = false
				SetWhoToUI(0)
				if WIM_Debug then
					local timestamp = date("%H:%M:%S")
					DEFAULT_CHAT_FRAME:AddMessage("|cff888888[" .. timestamp .. "]|r |cff00ff00[WIM WHO]|r Queue empty, scan complete")
				end
			end

			return -- Don't pass to original handler (prevents WHO window from opening)
		end
	end

	return WIM_FriendsFrame_OnEvent_orig(event)
end


function WIM_WhoList_Update()
	if not WIM_WhoScanInProgress then
		return WIM_WhoList_Update_orig()
	end
end

function WIM_SetUpHooks()
	if WIM_HooksInstalled then
		return
	end

	-- Proxy ChatFrameEditBox so all shift+click handlers (game + addons)
	-- automatically redirect link insertions to WIM's edit box.
	-- When WIM_EditBoxInFocus is set:
	--   IsVisible/IsShown return true -> handlers call Insert instead of default action
	--   Insert redirects to WIM_EditBoxInFocus
	-- This eliminates the need to hook every individual shift+click handler.
	do
		local origIsVisible = ChatFrameEditBox.IsVisible
		local origIsShown = ChatFrameEditBox.IsShown
		local origInsert = ChatFrameEditBox.Insert
		local origShow = ChatFrameEditBox.Show

		-- Save original for use in WIM.xml OnShow (need real visibility check)
		WIM_OrigChatEditBoxIsVisible = origIsVisible

		ChatFrameEditBox.IsVisible = function(self)
			if WIM_EditBoxInFocus and IsShiftKeyDown() then return 1 end
			return origIsVisible(self)
		end

		ChatFrameEditBox.IsShown = function(self)
			if WIM_EditBoxInFocus and IsShiftKeyDown() then return 1 end
			return origIsShown(self)
		end

		-- Suppress Show during shift+click linking so addons like pfQuest
		-- (which call ChatFrameEditBox:Show() before Insert) don't open
		-- vanilla chat and clear WIM_EditBoxInFocus.
		ChatFrameEditBox.Show = function(self)
			if WIM_EditBoxInFocus and IsShiftKeyDown() then
				return
			end
			return origShow(self)
		end

		-- Insert guard: only allow one Insert per frame to prevent double-insertion
		-- (e.g. pfQuest inserts a quest link, then game original also inserts quest name)
		local insertedThisFrame = false
		ChatFrameEditBox.Insert = function(self, text)
			if WIM_EditBoxInFocus then
				if not insertedThisFrame then
					insertedThisFrame = true
					WIM_EditBoxInFocus:Insert(text)
				end
				return
			end
			origInsert(self, text)
		end

		local guardFrame = CreateFrame("Frame")
		guardFrame:SetScript("OnUpdate", function()
			insertedThisFrame = false
		end)
	end

	do
		local supress
		local orig = ChatFrameEditBox:GetScript('OnTextSet')
		ChatFrameEditBox:SetScript('OnTextSet', function()
			if not supress then
				orig()
			else
				supress = false
			end
		end)
		ChatFrameEditBox:SetScript('OnChar', function()
			if IsControlKeyDown() then -- TODO problem is ctrl-v, maybe find a better solution
				return
			end

			local text = this:GetText()
			local _, _, command, name = strfind(text, '^(/%S+)%s*(%a*)')
			if command then
				local i = 1
				while true do
					if getglobal('SLASH_WHISPER'..i) then

						if strupper(command) == strupper(TEXT(getglobal('SLASH_WHISPER'..i))) and name ~= '' then

							local function tryCompleting(candidate)
								if strsub(strupper(candidate), 1, strlen(name)) == strupper(name) then
									supress = true
									this:SetText(text..strsub(candidate, strlen(name) + 1))
									this:HighlightText(strlen(text), -1)
									return
								end
							end

							for i=1,GetNumFriends() do
								tryCompleting(GetFriendInfo(i) or '')
								if supress then break end
							end

							if not supress then
								for i=1,GetNumGuildMembers(true) do
									tryCompleting(GetGuildRosterInfo(i) or '')
									if supress then break end
								end
							end

							break
						end
					else
						break
					end
					i = i + 1
				end
			end
		end)
	end

	--Clear WIM_EditBoxInFocus when vanilla chat edit box is shown
	local origChatEditBoxOnShow = ChatFrameEditBox:GetScript('OnShow')
	ChatFrameEditBox:SetScript('OnShow', function()
		WIM_EditBoxInFocus = nil
		if origChatEditBoxOnShow then
			origChatEditBoxOnShow()
		end
	end)

	--Restore WIM_EditBoxInFocus when vanilla chat edit box closes
	local origChatEditBoxOnHide = ChatFrameEditBox:GetScript('OnHide')
	ChatFrameEditBox:SetScript('OnHide', function()
		if origChatEditBoxOnHide then
			origChatEditBoxOnHide()
		end
		for user, data in WIM_Windows do
			if data.is_visible then
				local msgBox = getglobal(data.frame .. "MsgBox")
				if msgBox then
					WIM_EditBoxInFocus = msgBox
					return
				end
			end
		end
	end)

	--Hook Friends Frame Send Message Button
	FriendsFrame_SendMessage = WIM_FriendsFrame_SendMessage;

	--Hook Chat Frame Whisper Parse
	WIM_ChatEdit_ParseText_orig = ChatEdit_ParseText
	ChatEdit_ParseText = WIM_ChatEdit_ParseText

	--Hook Chat Frame Reply
	WIM_ChatFrame_ReplyTell_orig = ChatFrame_ReplyTell
	ChatFrame_ReplyTell = WIM_ChatFrame_ReplyTell

	--Hook WhoList_Update
	WIM_WhoList_Update_orig = WhoList_Update
	WhoList_Update = WIM_WhoList_Update

	--Hook FriendsFrame_OnEvent
	WIM_FriendsFrame_OnEvent_orig = FriendsFrame_OnEvent;
	FriendsFrame_OnEvent = WIM_FriendsFrame_OnEvent;

	--Hook ChatFrame_OnEvent
	WIM_ChatFrame_OnEvent_orig = ChatFrame_OnEvent;
	ChatFrame_OnEvent = function(event) if(WIM_ChatFrameSupressor_OnEvent(event)) then WIM_ChatFrame_OnEvent_orig(event); end; end;

	--Hook SetItemRef for URL display
	WIM_SetItemRef_orig = SetItemRef;
	SetItemRef = function(link, text, button)
		if WIM_isLinkURL(link) then
			WIM_DisplayURL(link)
		else
			WIM_SetItemRef_orig(link, text, button)
		end
	end

	WIM_HooksInstalled = true;
end
