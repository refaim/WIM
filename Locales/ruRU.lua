if GetLocale() ~= "ruRU" then return end

BINDING_NAME_WIMSHOWNEW = "Показать новые сообщения"
BINDING_NAME_WIMHISTORY = "Просмотр истории"
BINDING_NAME_WIMENABLE = "Включить/выключить"
BINDING_NAME_WIMTOGGLE = "Переключить сообщения"
BINDING_NAME_WIMSHOWALL = "Показать все сообщения"
BINDING_NAME_WIMHIDEALL = "Скрыть все сообщения"

-- Class Names
WIM_LOCALIZED_DRUID = "Друид"
WIM_LOCALIZED_HUNTER = "Охотник"
WIM_LOCALIZED_MAGE = "Маг"
WIM_LOCALIZED_PALADIN = "Паладин"
WIM_LOCALIZED_PRIEST = "Жрец"
WIM_LOCALIZED_ROGUE = "Разбойник"
WIM_LOCALIZED_SHAMAN = "Шаман"
WIM_LOCALIZED_WARLOCK = "Чернокнижник"
WIM_LOCALIZED_WARRIOR = "Воин"

-- WIM_Icon.xml
WIM_L_CONVERSATIONS = "Диалоги"
WIM_L_CONVERSATIONSMENU = "Меню диалогов"
WIM_L_SHOWNEWMESSAGES = "Показать новые сообщения"
WIM_L_WIMOPTIONS = "Настройки WIM"
WIM_L_RIGHTCLICK = "ПКМ"
WIM_L_LEFTCLICK = "ЛКМ"

-- WIM_Options.xml
WIM_L_ENABLEWIM = "Включить WIM"
WIM_L_DISPLAYOPT = "Настройки отображения"
WIM_L_INCOMWHISP = "Входящие"
WIM_L_OUTGOMWHISP = "Исходящие"
WIM_L_SYSMESS = "Системные сообщения"
WIM_L_ERRORMESS = "Сообщения об ошибках"
WIM_L_WEBADDRESSLINK = "Ссылки"
WIM_L_SHOWSHORTCUTBAR = "Панель быстрого доступа"
WIM_L_THISSETLIMIT = "Эта настройка ограничивает\nминимальную высоту окон."
WIM_L_SHOWTIMESTAMPS = "Метки времени"
WIM_L_SHOWCHARINFO = "Информация о персонаже:"
WIM_L_CHANGESWILLBEMADE = "Изменения применятся только\nк новым окнам сообщений.\n|cffffffff(Требуется фоновый запрос /who)|r"
WIM_L_CLASSICONS = "Иконки классов"
WIM_L_CHANGESWILLBEMADENEWMESS = "Изменения применятся только\nк новым окнам сообщений."
WIM_L_CLASSCOLORS = "Цвета классов"
WIM_L_CHARDETAILS = "Детали персонажа"
WIM_L_MINIMAPICON = "Иконка на миникарте"
WIM_L_SHOWMINIMAPICON = "Показать иконку на миникарте"
WIM_L_FREEMOVING = "Свободное перемещение"
WIM_L_FREEMOVINGTOOLTIP = "Когда включено, Shift + ЛКМ\nпо иконке на миникарте позволяет\nперемещать её по экрану."
WIM_L_WINDOWS = " Окна "
WIM_L_GENERAL = " Основные "
WIM_L_FILTERS = " Фильтры "
WIM_L_HISTORY = " История "
WIM_L_HISTORYAUTOFOCUS = "Автофокус на всплывающее окно"
WIM_L_HISTORYFOCUSSENDMESS = "Сохранять фокус после отправки сообщения"
WIM_L_HISTORYFOCUSONLYCITY = "Только в крупных городах"
WIM_L_SHOWTOOLTIPS = "Показывать подсказки"
WIM_L_POPUPWINDOWWHENSENDINGWHISP = "Всплывающее окно при отправке шёпота"
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP = "Всплывающее окно при получении нового шёпота"
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES = "Всплывающее окно при получении ответа"
WIM_L_DISABLEPOPUPSINCOMBAT = "Отключить всплывающие окна в бою"
WIM_L_SUPRESSWHISPFROMDEFCHAT = "Скрывать шёпот в стандартном чате"
WIM_L_PLAYSOUND = "Звук при получении сообщения"
WIM_L_SORTCONV = "Сортировать диалоги по алфавиту"
WIM_L_AFKANDDNDMESS = "Показывать AFK и DND сообщения"
WIM_L_ESCTOCLOSEWINDOWS = "Закрывать окна клавишей Escape"
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP = "Использование Escape имеет ограничения.\n|cffffffffПример: окна закроются при открытии карты.|r"
WIM_L_INTERCEPTWHISPCOM = "Перехватывать команды шёпота"
WIM_L_INTERCEPTWHISPCOMTOOLTIP = "WIM будет перехватывать команды шёпота и автоматически открывать новое окно. (Например: /ш или /w)"
WIM_L_CASCADINGDIR = "Каскадное расположение.\nНаправление:"
WIM_L_SETLOC = "Задать позицию"
WIM_L_ALIASING = "Включить псевдонимы"
WIM_L_SHOWASCOMMENT = "Показывать как комментарий"
WIM_L_BUTNAME = "Имя"
WIM_L_BUTALIAS = "Псевдоним"
WIM_L_ADD = "Добавить"
WIM_L_ADDNEWALIAS = "Добавить псевдоним"
WIM_L_REMOVE = "Удалить"
WIM_L_EDIT = "Изменить"
WIM_L_EDITALIAS = "Изменить псевдоним"
WIM_L_ENABLEFILTER = "Включить фильтрацию"
WIM_L_KEYWORDSANDPHRASES = "Ключевые слова/фразы"
WIM_L_ACTION = "Действие"
WIM_L_ADDNEWFILTER = "Добавить фильтр"
WIM_L_EDITFILTER = "Изменить фильтр"
WIM_L_ENABLEHISTORY = "Включить историю"
WIM_L_RECEVERYONE = "Записывать всех"
WIM_L_RECFRIENDS = "Записывать друзей"
WIM_L_RECGUILD = "Записывать гильдию"
WIM_L_INCOMMESS = "Входящие сообщения"
WIM_L_OUTGOMMESS = "Исходящие сообщения"
WIM_L_SHOWHISTORYINMESS = "История в сообщении:"
WIM_L_SETMAXMESSPERUSER = "Макс. сообщений на пользователя:"
WIM_L_DELMESSOLDERTHAN = "Удалять сообщения старше:"
WIM_L_RECORDEDUSERS = "Записанные пользователи"
WIM_L_SAVEDMESS = "Сохранённые сообщения"
WIM_L_DELUSER = "Удалить пользователя"
WIM_L_VIEWHISTORY = "Просмотр истории"
WIM_L_CHARNAME = "Имя персонажа"
WIM_L_CHARALIAS = "Псевдоним персонажа"
WIM_L_CANCEL = "Отмена"
WIM_L_OK = "OK"
WIM_L_PERFORMFOLLACT = "Выполнить действие:"
WIM_L_ERREXAMPLEERRMESS = "Ошибка: Пример сообщения об ошибке"
WIM_L_KEYWORDSANDPHRASETOFILTER = "Ключевое слово/фраза для фильтра"
WIM_L_IGNORE = "Игнорировать"
WIM_L_BLOCK = "Блокировать"
WIM_L_PAZZA = "Pazza"
WIM_L_NONEWMESS = "Нет новых сообщений."
WIM_L_RECENTCONV = "Недавний диалог %d из %d"
WIM_L_WIMDOC = "Документация WIM"
WIM_L_DESCRIPTION = " Описание "
WIM_L_VERSIONHISTORY = " История версий "
WIM_L_DIDYOUKNOW = " А вы знали? "
WIM_L_CREDITS = " Благодарности "
WIM_L_BLOCKLEVEL = "Блокировать шёпот от игроков ниже 10 уровня"
WIM_L_BLOCKLVL = "WIM не будет показывать шёпот от игроков ниже 10 уровня, кроме друзей, согильдейцев и тех, кому вы сами писали в этой сессии."

-- WIM_Options.lua
WIM_L_ICONPOSIT = "Позиция иконки"
WIM_L_FONTSIZE = "Размер шрифта"
WIM_L_WINDOWSIZEPERC = "Размер окна (%)"
WIM_L_TRANSPARENCYPERC = "Прозрачность (%)"
WIM_L_WINDOWWIDTH = "Ширина окна"
WIM_L_WINDOWHEIGHT = "Высота окна"
WIM_L_UP = "Вверх"
WIM_L_DOWN = "Вниз"
WIM_L_LEFT = "Влево"
WIM_L_RIGHT = "Вправо"
WIM_L_UPANDLEFT = "Вверх и влево"
WIM_L_UPANDRIGHT = "Вверх и вправо"
WIM_L_DOWNANDLEFT = "Вниз и влево"
WIM_L_DOWNANDRIGHT = "Вниз и вправо"
WIM_L_DRAGTOSETDEFSPAWN = "Перетащите, чтобы задать\nпозицию появления окон."
WIM_L_DAY = "День"
WIM_L_WEEK = "Неделя"
WIM_L_MONTH = "Месяц"
WIM_L_ERRINVALIDKEYWORD = "Ошибка: неверное ключевое слово/фраза!"
WIM_L_ERRKEYWORDALREADYUSED = "Ошибка: ключевое слово/фраза уже используется!"
WIM_L_ERRNAMEALREADYUSED = "Ошибка: имя уже используется!"
WIM_L_ERRINVALIAS = "Ошибка: неверный псевдоним!"
WIM_L_ERRINVNAME = "Ошибка: неверное имя!"
WIM_L_WINDOWHEIGHTLIM = "Высота окна |cffffffff(ограничена панелью быстрого доступа)|r"

-- WIM_History.lua
WIM_L_NONESHOWALL = "Нет (показать все)"

-- WIM_History.xml
WIM_L_HISTORYVIEWER = "Просмотр истории WIM"
WIM_L_USERS = "Пользователи"
WIM_L_FILTERS2 = "Фильтры"
WIM_L_MESS = "Сообщения"

-- WIM_UrlCopy.xml
WIM_L_URLCOPY = "Скопировать URL"

-- WIM.lua
WIM_L_NONE = " - Нет -"
WIM_L_NONEC = "|cffffffff - Нет -"
WIM_L_INSPECT = "Осмотреть"
WIM_L_TRADE = "Обмен"
WIM_L_INVITE = "Пригласить"
WIM_L_TARGET = "Взять в цель"
WIM_L_GAMEMASTER = "Мастер игры"
WIM_L_NEWMESSAGE = "Новое сообщение!"
WIM_L_CONVCLOSED = "Беседа завершена."
WIM_L_PURGEDMESSAGES = "[WIM]: Удалено %d устаревших сообщений из истории."
--wim_titan.lua
WIM_L_MESSAGES = "Сообщения: "

-- WIM.xml
WIM_L_XTOOLTIP = "Shift + ЛКМ, чтобы завершить беседу."
WIM_L_HISTORYTOOLTIP = "Нажмите для просмотра истории сообщений."
WIM_L_RUSUREYOUWANTIGNORE = "Вы уверены, что хотите\nигнорировать этого игрока?"

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM — это интерфейс мгновенных сообщений для внутриигрового шёпота. Он разработан так, чтобы не мешать вам во время рейда, но при этом предоставлять удобное окно чата для каждого собеседника.

Загляните в настройки клавиш, чтобы найти полезные сочетания для WIM.
|r
Полезные команды:
/wim			|cffffffff- Окно настроек|r
/wim history	|cffffffff- Просмотр истории|r
/wim help		|cffffffff- Это окно|r

Дополнительные команды:
/wim reset			|cffffffff- Сбросить все настройки|r
/wim reset filters	|cffffffff- Сбросить фильтры|r
/wim clear history	|cffffffff- Очистить историю|r

WIM интегрируется с:|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
А вы знали...|cffffffff что командой |r/wim |cffffffffможно открыть настройки, где вы можете изменить внешний вид WIM?|r

А вы знали...|cffffffff что WIM имеет встроенный плагин для Titan Panel? Найдите его в меню плагинов Titan!|r

А вы знали...|cffffffff что в разделе «Назначение клавиш» главного меню можно настроить горячие клавиши для WIM?|r

А вы знали...|cffffffff что иконку на миникарте можно сделать свободно перемещаемой? В этом режиме Shift + ЛКМ позволяет перетащить её куда угодно.|r

А вы знали...|cffffffff что клавиша Tab в окне сообщения позволяет переключаться между диалогами?|r

А вы знали...|cffffffff что в WIM так много настроек, что во вкладке «Основные» есть полоса прокрутки? Обязательно загляните туда!|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) — автор Pazza <Bronzebeard>.
|cffffffffКонцепция и идеи: Sloans <Bronzebeard>.|r

Благодарю всех, кто помогал тестировать WIM и присылал отзывы и предложения:
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Все участники Resurgence <Bronzebeard>
|r

Также благодарю всех, кто помогал на ui.WorldOfWar.net и Curse-Gaming.com.
]]
