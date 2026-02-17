if GetLocale() ~= "esES" then return end

BINDING_NAME_WIMSHOWNEW = "Mostrar nuevos mensajes";
BINDING_NAME_WIMHISTORY = "Ver historial";
BINDING_NAME_WIMENABLE = "Activar/Desactivar";
BINDING_NAME_WIMTOGGLE = "Alternar mensajes";
BINDING_NAME_WIMSHOWALL = "Mostrar todos los mensajes";
BINDING_NAME_WIMHIDEALL = "Ocultar todos los mensajes";

-- Class Names
WIM_LOCALIZED_DRUID = "Druida";
WIM_LOCALIZED_HUNTER = "Cazador";
WIM_LOCALIZED_MAGE = "Mago";
WIM_LOCALIZED_PALADIN = "Paladín";
WIM_LOCALIZED_PRIEST = "Sacerdote";
WIM_LOCALIZED_ROGUE = "Pícaro";
WIM_LOCALIZED_SHAMAN = "Chamán";
WIM_LOCALIZED_WARLOCK = "Brujo";
WIM_LOCALIZED_WARRIOR = "Guerrero";

--icons.xml
WIM_L_CONVERSATIONS="Conversaciones";
WIM_L_CONVERSATIONSMENU="Menú de conversaciones";
WIM_L_SHOWNEWMESSAGES="Mostrar nuevos mensajes";
WIM_L_WIMOPTIONS="Opciones de WIM";
WIM_L_RIGHTCLICK="Clic derecho";
WIM_L_LEFTCLICK="Clic izquierdo";
--options.xml
WIM_L_ENABLEWIM="Activar WIM";
WIM_L_DISPLAYOPT="Opciones de visualización";
WIM_L_INCOMWHISP="Susurros entrantes";
WIM_L_OUTGOMWHISP="Susurros salientes";
WIM_L_SYSMESS="Mensajes del sistema";
WIM_L_ERRORMESS="Mensajes de error";
WIM_L_WEBADDRESSLINK="Enlace de dirección web";
WIM_L_SHOWSHORTCUTBAR="Mostrar barra de atajos.";
WIM_L_THISSETLIMIT="Esta configuración limita\nla altura mínima de la ventana.";
WIM_L_SHOWTIMESTAMPS="Mostrar marcas de tiempo.";
WIM_L_SHOWCHARINFO="Mostrar info del personaje:";
WIM_L_CHANGESWILLBEMADE="Los cambios se aplicarán solo\na las nuevas ventanas de mensajes.\n|cffffffff(Requiere consulta /who en segundo plano.)|r";
WIM_L_CLASSICONS="Iconos de clase";
WIM_L_CHANGESWILLBEMADENEWMESS="Los cambios se aplicarán solo\na las nuevas ventanas de mensajes.";
WIM_L_CLASSCOLORS="Colores de clase";
WIM_L_CHARDETAILS="Detalles del personaje";
WIM_L_MINIMAPICON="Icono del minimapa";
WIM_L_SHOWMINIMAPICON="Mostrar icono del minimapa";
WIM_L_FREEMOVING="Movimiento libre";
WIM_L_FREEMOVINGTOOLTIP="Cuando está activado, Shift-Clic izquierdo\nen el icono del minimapa te permite\narrastrarlo por la pantalla.";
WIM_L_WINDOWS=" Ventanas ";
WIM_L_GENERAL=" General ";
WIM_L_FILTERS=" Filtros ";
WIM_L_HISTORY=" Historial ";
WIM_L_HISTORYAUTOFOCUS="Enfocar ventana automáticamente al aparecer.";
WIM_L_HISTORYFOCUSSENDMESS="Mantener enfoque después de enviar mensaje.";
WIM_L_HISTORYFOCUSONLYCITY="Solo en ciudades principales.";
WIM_L_SHOWTOOLTIPS="Mostrar tooltips.";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="Ventana emergente al enviar susurros.";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="Ventana emergente al recibir nuevos susurros.";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="Ventana emergente al recibir respuestas.";
WIM_L_DISABLEPOPUPSINCOMBAT="Desactivar ventanas emergentes en combate.";
WIM_L_SUPRESSWHISPFROMDEFCHAT="Suprimir susurros del chat predeterminado.";
WIM_L_PLAYSOUND="Reproducir sonido al recibir mensaje.";
WIM_L_SORTCONV="Ordenar lista de conversaciones alfabéticamente.";
WIM_L_AFKANDDNDMESS="Mostrar mensajes AFK y DND.";
WIM_L_ESCTOCLOSEWINDOWS="Usar 'Escape' para cerrar ventanas.";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="Usar la tecla 'Escape' tiene sus limitaciones. |cffffffffEjemplo: Las ventanas se cerrarán al abrir el mapa.|r";
WIM_L_INTERCEPTWHISPCOM="Interceptar comandos de susurro.";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM interceptará cualquier comando de susurro y abrirá automáticamente una nueva ventana de mensaje. (Ejemplo: /w o /whisper).";
WIM_L_CASCADINGDIR="Activar cascada. Dirección:";
WIM_L_SETLOC="Establecer ubicación";
WIM_L_ALIASING="Activar alias";
WIM_L_SHOWASCOMMENT="Mostrar como comentario";
WIM_L_BUTNAME="Nombre";
WIM_L_BUTALIAS="Alias";
WIM_L_ADD="Añadir";
WIM_L_ADDNEWALIAS="Añadir nuevo alias";
WIM_L_REMOVE="Eliminar";
WIM_L_EDIT="Editar";
WIM_L_EDITALIAS="Editar alias";
WIM_L_ENABLEFILTER="Activar filtrado";
WIM_L_KEYWORDSANDPHRASES="Palabras clave/Frases";
WIM_L_ACTION="Acción";
WIM_L_ADDNEWFILTER="Añadir nuevo filtro";
WIM_L_EDITFILTER="Editar filtro";
WIM_L_ENABLEHISTORY="Activar historial";
WIM_L_RECEVERYONE="Registrar a todos";
WIM_L_RECFRIENDS="Registrar amigos";
WIM_L_RECGUILD="Registrar hermandad";
WIM_L_INCOMMESS="Mensajes entrantes";
WIM_L_OUTGOMMESS="Mensajes salientes";
WIM_L_SHOWHISTORYINMESS="Mostrar historial en mensaje:";
WIM_L_SETMAXMESSPERUSER="Máximo de mensajes por usuario:";
WIM_L_DELMESSOLDERTHAN="Eliminar mensajes más antiguos que:";
WIM_L_RECORDEDUSERS="Usuarios registrados";
WIM_L_SAVEDMESS="Mensajes guardados";
WIM_L_DELUSER="Eliminar usuario";
WIM_L_VIEWHISTORY="Ver historial";
WIM_L_CHARNAME="Nombre del personaje";
WIM_L_CHARALIAS="Alias del personaje";
WIM_L_CANCEL="Cancelar";
WIM_L_OK="Aceptar";
WIM_L_PERFORMFOLLACT="Realizar la siguiente acción:";
WIM_L_ERREXAMPLEERRMESS="ERROR: Mensaje de error de ejemplo";
WIM_L_KEYWORDSANDPHRASETOFILTER="Palabra clave/Frase a filtrar";
WIM_L_IGNORE="Ignorar";
WIM_L_BLOCK="Bloquear";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="No hay mensajes nuevos.";
WIM_L_RECENTCONV="Conversación reciente %d de %d";
WIM_L_WIMDOC="Documentación de WIM";
WIM_L_DESCRIPTION=" Descripción ";
WIM_L_VERSIONHISTORY=" Historial de versiones ";
WIM_L_DIDYOUKNOW=" ¿Sabías que? ";
WIM_L_CREDITS=" Créditos ";
--options.lua
WIM_L_ICONPOSIT="Posición del icono";
WIM_L_FONTSIZE="Tamaño de fuente";
WIM_L_WINDOWSIZEPERC="Tamaño de ventana (porcentaje)";
WIM_L_TRANSPARENCYPERC="Transparencia (porcentaje)";
WIM_L_WINDOWWIDTH="Ancho de ventana";
WIM_L_WINDOWHEIGHT="Alto de ventana";
WIM_L_UP="Arriba";
WIM_L_DOWN="Abajo";
WIM_L_LEFT="Izquierda";
WIM_L_RIGHT="Derecha";
WIM_L_UPANDLEFT="Arriba & Izquierda";
WIM_L_UPANDRIGHT="Arriba & Derecha";
WIM_L_DOWNANDLEFT="Abajo & Izquierda";
WIM_L_DOWNANDRIGHT="Abajo & Derecha";
WIM_L_DRAGTOSETDEFSPAWN="Arrastra para establecer la posición\npredeterminada de las ventanas de mensaje.";
WIM_L_DAY="Día";
WIM_L_WEEK="Semana";
WIM_L_MONTH="Mes";
WIM_L_ERRINVALIDKEYWORD="ERROR: ¡Palabra clave/Frase inválida!";
WIM_L_ERRKEYWORDALREADYUSED="ERROR: ¡Palabra clave/Frase ya utilizada!";
WIM_L_ERRNAMEALREADYUSED="ERROR: ¡Nombre ya utilizado!";
WIM_L_ERRINVALIAS="ERROR: ¡Alias inválido!";
WIM_L_ERRINVNAME="ERROR: ¡Nombre inválido!";
WIM_L_WINDOWHEIGHTLIM="Alto de ventana |cffffffff(Limitado por la barra de atajos)|r";
--history.lua
WIM_L_NONESHOWALL="Ninguno (Mostrar todos)";
--history.xml
WIM_L_HISTORYVIEWER="Visor de historial de WIM";
WIM_L_USERS="Usuarios";
WIM_L_FILTERS2="Filtros";
WIM_L_MESS="Mensajes";
--urlcopy.xml
WIM_L_URLCOPY="Copiar URL";
--wim.lua
WIM_L_NONE=" - Ninguno -";
WIM_L_NONEC="|cffffffff - Ninguno -";
WIM_L_INSPECT="Inspeccionar";
WIM_L_TRADE="Comerciar";
WIM_L_INVITE="Invitar";
WIM_L_TARGET="Seleccionar";
WIM_L_GAMEMASTER="Maestro de juego";
WIM_L_DATE_FORMAT="%d/%m/%y";
WIM_L_NEWMESSAGE="¡Nuevo mensaje!";
WIM_L_CONVCLOSED="Conversación cerrada.";
WIM_L_PURGEDMESSAGES="[WIM]: Se eliminaron %d mensajes obsoletos del historial.";
--wim_titan.lua
WIM_L_MESSAGES="Mensajes: ";
--wim.xml
WIM_L_XTOOLTIP="Shift & Clic izquierdo para terminar conversación.";
WIM_L_HISTORYTOOLTIP="Clic para ver el historial de mensajes.";
WIM_L_RUSUREYOUWANTIGNORE="¿Estás seguro de que quieres\nignorar a este usuario?";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM es exactamente lo que su nombre indica; una interfaz de mensajería instantánea para tus susurros en el juego. Fue diseñado especialmente para no interferir con tu interfaz (en raids) y al mismo tiempo ofrecer la comodidad de una ventana de chat para cada usuario.

Revisa tus atajos de teclado y busca las acciones disponibles de WIM.
|r
Comandos útiles:
/wim			|cffffffff- Ventana de opciones|r
/wim history	|cffffffff- Visor de historial|r
/wim help		|cffffffff- (esta ventana)|r

Comandos avanzados:
/wim reset			|cffffffff- Restablecer todas las opciones.|r
/wim reset filters	|cffffffff- Recargar definiciones de filtros.|r
/wim clear history	|cffffffff- Limpiar historial.|r

WIM se integra con los siguientes addons:|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
¿Sabías que...|cffffffff escribiendo el comando |r/wim |cffffffffabres la interfaz de opciones donde puedes personalizar WIM?|r

¿Sabías que...|cffffffff WIM viene con un plugin integrado para Titan Panel? ¡Búscalo en el menú de plugins de Titan!|r

¿Sabías que...|cffffffff si vas a "Atajos de teclado" en el menú principal, puedes encontrar atajos útiles para WIM?|r

¿Sabías que...|cffffffff puedes hacer que el icono del minimapa se mueva libremente? En modo libre, puedes hacer Shift-Clic izquierdo en el icono para arrastrarlo a donde quieras.|r

¿Sabías que...|cffffffff presionando Tab en un mensaje, puedes alternar entre otros mensajes?|r

¿Sabías que...|cffffffff WIM tiene tantas opciones que hay una barra de desplazamiento en la pestaña general? ¡Échale un vistazo!|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) por Pazza <Bronzebeard>.
|cffffffffEl concepto y las ideas fueron originados por Sloans <Bronzebeard>.|r

Me gustaría agradecer a todos los que ayudaron a probar WIM y enviaron sus comentarios y sugerencias:
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Todos en Resurgence <Bronzebeard>
|r

También me gustaría agradecer a todos los que contribuyeron en ui.WorldOfWar.net y Curse-Gaming.com.
]]
