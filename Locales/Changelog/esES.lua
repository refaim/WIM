if GetLocale() ~= "esES" then return end

WIM_CHANGE_LOG = [[
Versión 1.3.7 (02/02/2026)|cffffffff
[*] - Los colores de clase ahora usan RAID_CLASS_COLORS integrados del juego (DBFBlackbull)
[*] - Corregidos susurros por macro: /w Nombre mensaje ahora envía correctamente (Kirchlive)

Versión 1.3.6 (02/02/2026)|cffffffff
[+] - Localización completa: traducción completa de la interfaz para los 9 idiomas soportados
[+] - Registro de cambios ahora traducido a todos los idiomas soportados
[+] - Añadida documentación README

Versión 1.3.5b (02/02/2026)|cffffffff
[*] - Tiempo de espera WHO: 30s para Turtle WoW, 5s para vanilla

Versión 1.3.5a (02/02/2026)|cffffffff
[*] - Reactivada la opción Bloquear nivel bajo (funciona bien con entre facciones)

Versión 1.3.5 (29/12/2025)|cffffffff
[+] - La info WHO ahora se carga de forma asíncrona (los mensajes se muestran inmediatamente)
[+] - Cola WHO round-robin para distribución justa entre ventanas de susurro
[+] - Eliminación automática de jugadores de la cola WHO tras 5 intentos fallidos
[+] - Detección y marcado de susurros de GM (Turtle WoW)
[+] - Añadido comando /wimdebug para depurar el sistema WHO
[*] - Aumentado el tiempo de espera WHO a 30s para compatibilidad con Turtle WoW

Versión 1.3.4 (28/07/2025)|cffffffff
[*] - Corregida la visualización de caracteres cirílicos
[+] - Incorporados cambios de KasVital

Versión 1.3.3 (27/12/2017)|cffffffff
[+] - Refactorización por shirsig

Versión 1.3.2 (05/01/2017)|cffffffff
[+] - Traducido al ruso (ruRU)

Versión 1.3.1 (17/10/2006)|cffffffff
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
