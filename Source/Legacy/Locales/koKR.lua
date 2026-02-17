if GetLocale() ~= "koKR" then return end

BINDING_NAME_WIMSHOWNEW = "새 메시지 표시";
BINDING_NAME_WIMHISTORY = "기록 보기";
BINDING_NAME_WIMENABLE = "활성화/비활성화";
BINDING_NAME_WIMTOGGLE = "메시지 전환";
BINDING_NAME_WIMSHOWALL = "모든 메시지 표시";
BINDING_NAME_WIMHIDEALL = "모든 메시지 숨기기";

-- Class Names
WIM_LOCALIZED_DRUID = "드루이드";
WIM_LOCALIZED_HUNTER = "사냥꾼";
WIM_LOCALIZED_MAGE = "마법사";
WIM_LOCALIZED_PALADIN = "성기사";
WIM_LOCALIZED_PRIEST = "사제";
WIM_LOCALIZED_ROGUE = "도적";
WIM_LOCALIZED_SHAMAN = "주술사";
WIM_LOCALIZED_WARLOCK = "흑마법사";
WIM_LOCALIZED_WARRIOR = "전사";

--icons.xml
WIM_L_CONVERSATIONS="대화";
WIM_L_CONVERSATIONSMENU="대화 메뉴";
WIM_L_SHOWNEWMESSAGES="새 메시지 표시";
WIM_L_WIMOPTIONS="WIM 옵션";
WIM_L_RIGHTCLICK="오른쪽 클릭";
WIM_L_LEFTCLICK="왼쪽 클릭";
--options.xml
WIM_L_ENABLEWIM="WIM 활성화";
WIM_L_DISPLAYOPT="표시 옵션";
WIM_L_INCOMWHISP="받는 귓속말";
WIM_L_OUTGOMWHISP="보내는 귓속말";
WIM_L_SYSMESS="시스템 메시지";
WIM_L_ERRORMESS="오류 메시지";
WIM_L_WEBADDRESSLINK="웹 주소 링크";
WIM_L_SHOWSHORTCUTBAR="단축바 표시.";
WIM_L_THISSETLIMIT="이 설정은 창의\n최소 높이를 제한합니다.";
WIM_L_SHOWTIMESTAMPS="타임스탬프 표시.";
WIM_L_SHOWCHARINFO="캐릭터 정보 표시:";
WIM_L_CHANGESWILLBEMADE="변경 사항은 새 메시지\n창에만 적용됩니다.\n|cffffffff(백그라운드 /who 쿼리 필요.)|r";
WIM_L_CLASSICONS="직업 아이콘";
WIM_L_CHANGESWILLBEMADENEWMESS="변경 사항은 새 메시지\n창에만 적용됩니다.";
WIM_L_CLASSCOLORS="직업 색상";
WIM_L_CHARDETAILS="캐릭터 상세정보";
WIM_L_MINIMAPICON="미니맵 아이콘";
WIM_L_SHOWMINIMAPICON="미니맵 아이콘 표시";
WIM_L_FREEMOVING="자유 이동";
WIM_L_FREEMOVINGTOOLTIP="활성화 시 Shift-왼쪽 클릭으로\n미니맵 아이콘을 화면\n어디로든 이동할 수 있습니다.";
WIM_L_WINDOWS=" 창 ";
WIM_L_GENERAL=" 일반 ";
WIM_L_FILTERS=" 필터 ";
WIM_L_HISTORY=" 기록 ";
WIM_L_HISTORYAUTOFOCUS="팝업 시 자동 포커스.";
WIM_L_HISTORYFOCUSSENDMESS="메시지 전송 후 포커스 유지.";
WIM_L_HISTORYFOCUSONLYCITY="주요 도시에서만.";
WIM_L_SHOWTOOLTIPS="툴팁 표시.";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="귓속말 보낼 때 팝업.";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="새 귓속말 받을 때 팝업.";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="답장 받을 때 팝업.";
WIM_L_DISABLEPOPUPSINCOMBAT="전투 중 팝업 비활성화.";
WIM_L_SUPRESSWHISPFROMDEFCHAT="기본 채팅창에서 귓속말 숨기기.";
WIM_L_PLAYSOUND="메시지 수신 시 소리 재생.";
WIM_L_SORTCONV="대화 목록 알파벳순 정렬.";
WIM_L_AFKANDDNDMESS="AFK 및 DND 메시지 표시.";
WIM_L_ESCTOCLOSEWINDOWS="'Escape' 키로 창 닫기.";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="'Escape' 키 사용에는 제한이 있습니다. |cffffffff예: 지도를 열 때 창이 닫힙니다.|r";
WIM_L_INTERCEPTWHISPCOM="귓속말 명령어 가로채기.";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM이 모든 귓속말 명령어를 가로채고 자동으로 새 메시지 창을 엽니다. (예: /w 또는 /whisper).";
WIM_L_CASCADINGDIR="계단식 배치 활성화. 방향:";
WIM_L_SETLOC="위치 설정";
WIM_L_ALIASING="별명 활성화";
WIM_L_SHOWASCOMMENT="코멘트로 표시";
WIM_L_BUTNAME="이름";
WIM_L_BUTALIAS="별명";
WIM_L_ADD="추가";
WIM_L_ADDNEWALIAS="새 별명 추가";
WIM_L_REMOVE="제거";
WIM_L_EDIT="편집";
WIM_L_EDITALIAS="별명 편집";
WIM_L_ENABLEFILTER="필터링 활성화";
WIM_L_KEYWORDSANDPHRASES="키워드/문구";
WIM_L_ACTION="동작";
WIM_L_ADDNEWFILTER="새 필터 추가";
WIM_L_EDITFILTER="필터 편집";
WIM_L_ENABLEHISTORY="기록 활성화";
WIM_L_RECEVERYONE="모든 사람 기록";
WIM_L_RECFRIENDS="친구 기록";
WIM_L_RECGUILD="길드 기록";
WIM_L_INCOMMESS="받은 메시지";
WIM_L_OUTGOMMESS="보낸 메시지";
WIM_L_SHOWHISTORYINMESS="메시지에 기록 표시:";
WIM_L_SETMAXMESSPERUSER="사용자당 최대 메시지 수:";
WIM_L_DELMESSOLDERTHAN="다음보다 오래된 메시지 삭제:";
WIM_L_RECORDEDUSERS="기록된 사용자";
WIM_L_SAVEDMESS="저장된 메시지";
WIM_L_DELUSER="사용자 삭제";
WIM_L_VIEWHISTORY="기록 보기";
WIM_L_CHARNAME="캐릭터 이름";
WIM_L_CHARALIAS="캐릭터 별명";
WIM_L_CANCEL="취소";
WIM_L_OK="확인";
WIM_L_PERFORMFOLLACT="다음 동작 수행:";
WIM_L_ERREXAMPLEERRMESS="오류: 예시 오류 메시지";
WIM_L_KEYWORDSANDPHRASETOFILTER="필터할 키워드/문구";
WIM_L_IGNORE="무시";
WIM_L_BLOCK="차단";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="새 메시지가 없습니다.";
WIM_L_RECENTCONV="최근 대화 %d / %d";
WIM_L_WIMDOC="WIM 문서";
WIM_L_DESCRIPTION=" 설명 ";
WIM_L_VERSIONHISTORY=" 버전 기록 ";
WIM_L_DIDYOUKNOW=" 알고 계셨나요? ";
WIM_L_CREDITS=" 크레딧 ";
--options.lua
WIM_L_ICONPOSIT="아이콘 위치";
WIM_L_FONTSIZE="글꼴 크기";
WIM_L_WINDOWSIZEPERC="창 크기 (퍼센트)";
WIM_L_TRANSPARENCYPERC="투명도 (퍼센트)";
WIM_L_WINDOWWIDTH="창 너비";
WIM_L_WINDOWHEIGHT="창 높이";
WIM_L_UP="위";
WIM_L_DOWN="아래";
WIM_L_LEFT="왼쪽";
WIM_L_RIGHT="오른쪽";
WIM_L_UPANDLEFT="위 & 왼쪽";
WIM_L_UPANDRIGHT="위 & 오른쪽";
WIM_L_DOWNANDLEFT="아래 & 왼쪽";
WIM_L_DOWNANDRIGHT="아래 & 오른쪽";
WIM_L_DRAGTOSETDEFSPAWN="드래그하여 메시지 창의\n기본 위치를 설정하세요.";
WIM_L_DAY="일";
WIM_L_WEEK="주";
WIM_L_MONTH="월";
WIM_L_ERRINVALIDKEYWORD="오류: 잘못된 키워드/문구!";
WIM_L_ERRKEYWORDALREADYUSED="오류: 키워드/문구가 이미 사용 중!";
WIM_L_ERRNAMEALREADYUSED="오류: 이름이 이미 사용 중!";
WIM_L_ERRINVALIAS="오류: 잘못된 별명!";
WIM_L_ERRINVNAME="오류: 잘못된 이름!";
WIM_L_WINDOWHEIGHTLIM="창 높이 |cffffffff(단축바에 의해 제한됨)|r";
--history.lua
WIM_L_NONESHOWALL="없음 (모두 표시)";
--history.xml
WIM_L_HISTORYVIEWER="WIM 기록 뷰어";
WIM_L_USERS="사용자";
WIM_L_FILTERS2="필터";
WIM_L_MESS="메시지";
--urlcopy.xml
WIM_L_URLCOPY="URL 복사";
--wim.lua
WIM_L_NONE=" - 없음 -";
WIM_L_NONEC="|cffffffff - 없음 -";
WIM_L_INSPECT="살펴보기";
WIM_L_TRADE="거래";
WIM_L_INVITE="초대";
WIM_L_TARGET="대상 지정";
WIM_L_GAMEMASTER="게임 마스터";
WIM_L_DATE_FORMAT="%y/%m/%d";
WIM_L_NEWMESSAGE="새 메시지!";
WIM_L_CONVCLOSED="대화가 종료되었습니다.";
WIM_L_PURGEDMESSAGES="[WIM]: 기록에서 오래된 메시지 %d개를 삭제했습니다.";
--wim_titan.lua
WIM_L_MESSAGES="메시지: ";
--wim.xml
WIM_L_XTOOLTIP="Shift & 왼쪽 클릭으로 대화 종료.";
WIM_L_HISTORYTOOLTIP="클릭하여 메시지 기록 보기.";
WIM_L_RUSUREYOUWANTIGNORE="이 사용자를 정말로\n무시하시겠습니까?";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM은 이름 그대로 게임 내 귓속말을 위한 인스턴트 메신저 인터페이스입니다. 바쁜 인터페이스(레이드 중)를 방해하지 않으면서도 각 사용자와의 채팅 창을 편리하게 사용할 수 있도록 특별히 설계되었습니다.

키 설정 화면에서 WIM의 사용 가능한 동작을 확인하세요.
|r
유용한 명령어:
/wim			|cffffffff- 옵션 창|r
/wim history	|cffffffff- 기록 뷰어|r
/wim help		|cffffffff- (이 창)|r

고급 명령어:
/wim reset			|cffffffff- 모든 옵션 초기화.|r
/wim reset filters	|cffffffff- 필터 정의 다시 로드.|r
/wim clear history	|cffffffff- 기록 삭제.|r

WIM은 다음 애드온과 통합됩니다:|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
알고 계셨나요...|cffffffff |r/wim |cffffffff명령어를 입력하면 WIM을 사용자 정의할 수 있는 옵션 인터페이스가 열린다는 것을?|r

알고 계셨나요...|cffffffff WIM에는 Titan Panel 플러그인이 내장되어 있다는 것을? Titan의 플러그인 메뉴에서 찾아보세요!|r

알고 계셨나요...|cffffffff 메인 메뉴의 "키 설정"에서 WIM에 유용한 키 바인딩을 찾을 수 있다는 것을?|r

알고 계셨나요...|cffffffff 미니맵 아이콘을 자유롭게 이동할 수 있다는 것을? 자유 이동 모드에서 Shift-왼쪽 클릭으로 아이콘을 원하는 곳으로 드래그할 수 있습니다.|r

알고 계셨나요...|cffffffff 메시지에서 Tab 키를 누르면 다른 메시지로 전환할 수 있다는 것을?|r

알고 계셨나요...|cffffffff WIM에는 옵션이 너무 많아서 일반 탭에 스크롤바가 있다는 것을? 확인해 보세요!|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) 제작: Pazza <Bronzebeard>.
|cffffffff컨셉과 아이디어는 Sloans <Bronzebeard>가 제안했습니다.|r

WIM 테스트에 도움을 주시고 피드백과 제안을 보내주신 모든 분들께 감사드립니다:
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Resurgence <Bronzebeard>의 모든 분들
|r

또한 ui.WorldOfWar.net과 Curse-Gaming.com에서 기여해 주신 모든 분들께도 감사드립니다.
]]
