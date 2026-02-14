if GetLocale() ~= "esES" then return end

WIM_CHANGE_LOG = [[
|rVersión 1.3.10 (14/02/2026)|cffffffff
[*] - Shift+clic ahora enlaza de forma fiable en las ventanas de WIM (objetos, misiones, hechizos, etc.)
[*] - Los enlaces ya no se duplican cuando WIM y el chat predeterminado están abiertos simultáneamente
[*] - Mejorada la compatibilidad con pfQuest y otros addons que usan shift+clic para enlazar
[*] - /wim reset ahora restablece correctamente todas las configuraciones
[*] - La opción "Interceptar comandos de susurro" ahora funciona correctamente
[*] - La información del jugador (nivel, clase, hermandad) ya no se queda atascada en ciertos jugadores
[*] - Mejorado el rendimiento del addon

|rVersión 1.3.9 (11/02/2026)|cffffffff
[*] - Corregido error que podía ocurrir al iniciar sesión
[*] - El popup de historial ahora muestra la cantidad correcta de mensajes
[*] - El comando /who ya no es interceptado innecesariamente por WIM
[*] - Las nuevas configuraciones predeterminadas ahora se aplican correctamente al actualizar desde una versión anterior
[*] - Corregido shift+clic en ranuras vacías de equipo e inventario
[*] - Corregido shift+clic en reagentes de ventanas de profesión que podía enlazar el objeto incorrecto
[*] - Los clics en objetos con AllInOneInventory o EngInventory ya no se procesan dos veces
[*] - El autocompletado de nombres en susurros ahora sugiere correctamente la primera coincidencia
[*] - Corregidos posibles errores al cerrar ventanas con Escape u otros addons

|rVersión 1.3.8 (11/02/2026)|cffffffff
[*] - Shift+clic en el Registro de misiones ahora enlaza misiones y sus recompensas en ventanas WIM
[*] - La tecla de respuesta ya no requiere doble pulsación para enfocar
[*] - Corregido error al cerrar una ventana durante consulta WHO
[*] - El filtro de fecha en historial ya no se reinicia al hacer clic en el mismo nombre
[*] - Corregido "&amp;" mostrándose en lugar de "&" en tooltip del botón cerrar
[+] - El formato de fecha en historial ahora se adapta al idioma del juego
[-] - Eliminados filtros de spam predeterminados obsoletos

|rVersión 1.3.7 (02/02/2026)|cffffffff
[*] - Los colores de clase ahora coinciden exactamente con los valores del juego (DBFBlackbull)
[*] - Los macros de susurro (/w Nombre mensaje) ahora envían correctamente (Kirchlive)

|rVersión 1.3.6 (02/02/2026)|cffffffff
[+] - Traducción completa de la interfaz para los 9 idiomas soportados

|rVersión 1.3.5 (29/12/2025)|cffffffff
[+] - Los mensajes ahora aparecen al instante; la info del jugador se carga en segundo plano (me0wg4ming)
[+] - Los susurros de GM ahora se destacan (me0wg4ming)

|rVersión 1.3.4 (28/07/2025)|cffffffff
[*] - Corregida la visualización de caracteres cirílicos
[+] - Mejoras de localización e interfaz (KasVital)

|rVersión 1.3.3 (27/12/2017)|cffffffff
[+] - Refactorización por shirsig

|rVersión 1.3.2 (05/01/2017)|cffffffff
[+] - Traducido al ruso (ruRU)

|rVersión 1.3.1 (17/10/2006)|cffffffff
[+] - Creado nuevo menú del icono del minimapa. Ya no usa el menú desplegable de Blizzard.
[+] - Ahora puedes cerrar conversaciones desde el menú del icono del minimapa.
[*] - Realizados cambios de código necesarios para el plugin Titan y el nuevo menú del minimapa.
[*] - La ventana Who ya no aparece al hablar con GM o usuario desconectado.
[+] - WIM reemplaza el botón "Enviar mensaje" en el marco de Amigos.
[+] - Ahora intercepta comandos /w y /whisper y abre una ventana de mensaje.
[+] - Añadida opción para activar/desactivar la intercepción de comandos de susurro.
[+] - Añadido soporte para LootLink.
[+] - Añadido soporte para EngInventory.
[+] - Ahora puedes ejecutar comandos slash dentro de una ventana de mensaje.

|rVersión 1.2.13 (03/10/2006)|cffffffff
[*] - Corregido bug que causa error si Titan no está cargado.

|rVersión 1.2.12 (03/10/2006)|cffffffff
[+] - Añadido soporte para AtlasLoot.
[+] - Añadida opción para mantener el foco solo en ciudades principales.
[+] - Añadida opción para no mostrar mensajes AFK y DND.
[+] - Añadida opción para Activar/Desactivar el uso de 'Tecla Escape' para cerrar ventanas.
[+] - Añadidas asignaciones de teclas 'Mostrar' y 'Ocultar todos los mensajes'.
[+] - Añadida barra de desplazamiento a la pestaña de opciones generales. (¡sin espacio!).
[*] - Corregido error nil en función WIM_LoadGuildList(). (gracias Misschief).
[+] - Ahora puedes enlazar objetos desde la ventana de botín.
[+] - Añadido soporte para AllInOneInventory.
[*] - La ventana Who ya no debería aparecer al encontrar nombres similares.
[*] - Titan ahora está listado como dependencia opcional.

|rVersión 1.2.11 (29/09/2006)|cffffffff
[*] - Corregido error ortográfico en la pestaña Ventanas.
[*] - Ya no se ejecuta solicitud /who en usuarios de otros reinos.
[+] - Obtener información de usuarios de otros reinos desde info de banda.
[*] - La ventana de alternar mensajes solo muestra usuarios únicos como estaba previsto.
[+] - Al alternar, la ventana ahora pasa al frente si está detrás de otra.
[+] - Al alternar, las ventanas ahora enfocan automáticamente cuando se selecciona un mensaje.
[+] - La tecla TAB ahora alterna ventanas mientras ya estás enfocado en otra ventana.
[+] - Ahora puedes enlazar objetos desde la pantalla de inspección.
[+] - Ahora puedes enlazar objetos en SuperInspect.
[+] - Añadida pestaña "¿Sabías que?" en la ayuda.
[+] - Añadida pestaña "Créditos" en la ayuda.
[+] - Añadido botón a la pantalla de opciones para acceder a la ayuda.

|rVersión 1.2.10 (26/09/2006)|cffffffff
[*] - Realizado un ajuste menor al comportamiento del enfoque de ventanas.
[+] - Modificada ventana de opciones para incluir opciones de alias, filtrado e Historial
[+] - Añadido Filtrado de Alias: (1: reemplazar nombre; 2: mostrar como comentario);
[+] - Añadido Filtrado de Palabras clave/Frases: (1: Ignorar (por WIM); 2: Bloquear (completamente))
[+] - Añadidas reglas de filtro CT_RABM por defecto.
[+] - Añadido motor de historial y opciones.
[+] - Añadido visor de historial. ( /wim history )
[*] - La barra de atajos ahora mantiene su transparencia al 100%.
[+] - Añadido botón a la ventana de mensajes para acceder al historial si existe.
[+] - Añadidas opciones para establecer la posición predeterminada de la ventana.
[+] - Añadida opción para Activar/Desactivar el efecto cascada de ventanas.
[+] - Añadida opción para cambiar la dirección del efecto cascada.
[+] - Añadidas asignaciones de teclas.
[+] - Añadida asignación de tecla para alternar entre conversaciones recientes.
[+] - Añadida pantalla de ayuda. ( /wim help )

|rVersión 1.1.15 (19/09/2006)|cffffffff
[+] - Añadida opción para mostrar info del personaje (solicitudes /who).
[+] - Añadida opción para mostrar icono de clase. (icono por defecto actualizado).
[*] - El icono del minimapa ya no se muestra sobre todas las demás ventanas a menos que esté en modo de movimiento libre.
[+] - Ahora puedes enlazar objetos en tu ventana de personaje.
[+] - Ahora puedes enlazar objetos desde ventanas de profesiones.
[+] - Ahora puedes enlazar objetos desde ventanas de oficios (ej: Encantamiento)
[+] - Añadida opción para establecer el color de clase en el texto de la barra de título.
[+] - Añadida opción para mostrar marcas de tiempo.
[+] - Añadida opción para Activar/Desactivar WIM.
[+] - Añadida barra de atajos (y opciones apropiadas).
[+] - Añadida info detallada del personaje. (Hermandad, nivel, raza, clase).

|rVersión 1.1.4 (15/09/2006)|cffffffff
[+] - Añadido plugin Titan integrado.
[*] - La transparencia ya no afecta al texto del chat.
[*] - El menú del minimapa ahora se abre a la izquierda como estaba previsto.
[+] - Creados nuevos gráficos para la ventana de mensajes.
[+] - Recreado el marco de la ventana de mensajes - ¡ahora redimensionable!
[+] - Reorganizada la ventana de opciones y creada pestaña para opciones de ventana
[-] - Eliminada la opción 'Mostrar tooltip del minimapa'.
[+] - Añadida opción 'Mostrar tooltips'.
[*] - Reformulada la opción de popup al recibir respuestas (funcionaba como estaba previsto).
[*] - Las ventanas ya no pueden posicionarse fuera de la interfaz.
[+] - Añadida opción para ordenar la lista de conversaciones alfabéticamente (de lo contrario por orden de recepción).
[+] - Añadidas opciones para cambiar la altura y anchura de las ventanas de mensajes.
[+] - Las ventanas de mensajes ahora pueden arrastrarse por el marco del chat.
[+] - Al hacer clic en el marco del chat ahora se enfoca el cuadro de mensaje.
[+] - Añadida la capacidad de cerrar una conversación.
[+] - Añadido icono del minimapa con movimiento libre. (Mover a cualquier parte de tu pantalla).
[+] - Shift-Clic en el botón de desplazamiento ahora pasa página arriba y abajo.
[+] - Shift-Rueda del ratón ahora pasa página arriba y abajo.
[+] - Añadida opción para desactivar popups en combate.
[+] - Añadidos iconos de clase a la ventana de mensajes.

|rVersión 1.0.19 (12/09/2006) |cffffffff
[*] - Corregido el problema con los idiomas del juego (Común/Orco). Esto también debería resolver problemas con otras interfaces de WoW en otros idiomas.
[*] - Recodificados algunos hooks de funciones para evitar recibir mensajes duplicados debido a conflictos de addons.

|rVersión 1.0.18 (12/09/2006) |cffffffff
[!] - Lanzamiento público inicial.

]]
