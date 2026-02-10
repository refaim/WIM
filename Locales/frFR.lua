if GetLocale() ~= "frFR" then return end

BINDING_NAME_WIMSHOWNEW = "Afficher les nouveaux messages";
BINDING_NAME_WIMHISTORY = "Afficher l'historique";
BINDING_NAME_WIMENABLE = "Activer/Désactiver";
BINDING_NAME_WIMTOGGLE = "Basculer les messages";
BINDING_NAME_WIMSHOWALL = "Afficher tous les messages";
BINDING_NAME_WIMHIDEALL = "Masquer tous les messages";

-- Class Names
WIM_LOCALIZED_DRUID = "Druide";
WIM_LOCALIZED_HUNTER = "Chasseur";
WIM_LOCALIZED_MAGE = "Mage";
WIM_LOCALIZED_PALADIN = "Paladin";
WIM_LOCALIZED_PRIEST = "Prêtre";
WIM_LOCALIZED_ROGUE = "Voleur";
WIM_LOCALIZED_SHAMAN = "Chaman";
WIM_LOCALIZED_WARLOCK = "Démoniste";
WIM_LOCALIZED_WARRIOR = "Guerrier";

--icons.xml
WIM_L_CONVERSATIONS="Conversations";
WIM_L_CONVERSATIONSMENU="Menu des conversations";
WIM_L_SHOWNEWMESSAGES="Afficher les nouveaux messages";
WIM_L_WIMOPTIONS="Options WIM";
WIM_L_RIGHTCLICK="Clic droit";
WIM_L_LEFTCLICK="Clic gauche";
--options.xml
WIM_L_ENABLEWIM="Activer WIM";
WIM_L_DISPLAYOPT="Options d'affichage";
WIM_L_INCOMWHISP="Chuchotements entrants";
WIM_L_OUTGOMWHISP="Chuchotements sortants";
WIM_L_SYSMESS="Messages système";
WIM_L_ERRORMESS="Messages d'erreur";
WIM_L_WEBADDRESSLINK="Lien d'adresse web";
WIM_L_SHOWSHORTCUTBAR="Afficher la barre de raccourcis.";
WIM_L_THISSETLIMIT="Ce paramètre limite\nla hauteur minimale de la fenêtre.";
WIM_L_SHOWTIMESTAMPS="Afficher les horodatages.";
WIM_L_SHOWCHARINFO="Afficher les infos du personnage:";
WIM_L_CHANGESWILLBEMADE="Les modifications ne seront appliquées\nqu'aux nouvelles fenêtres de messages.\n|cffffffff(Nécessite une requête /who en arrière-plan.)|r";
WIM_L_CLASSICONS="Icônes de classe";
WIM_L_CHANGESWILLBEMADENEWMESS="Les modifications ne seront appliquées\nqu'aux nouvelles fenêtres de messages.";
WIM_L_CLASSCOLORS="Couleurs de classe";
WIM_L_CHARDETAILS="Détails du personnage";
WIM_L_MINIMAPICON="Icône de la minicarte";
WIM_L_SHOWMINIMAPICON="Afficher l'icône de la minicarte";
WIM_L_FREEMOVING="Mouvement libre";
WIM_L_FREEMOVINGTOOLTIP="Lorsqu'activé, Shift-Clic gauche\nsur l'icône de la minicarte vous permet\nde la déplacer sur votre écran.";
WIM_L_WINDOWS=" Fenêtres ";
WIM_L_GENERAL=" Général ";
WIM_L_FILTERS=" Filtres ";
WIM_L_HISTORY=" Historique ";
WIM_L_HISTORYAUTOFOCUS="Focus automatique lors du popup.";
WIM_L_HISTORYFOCUSSENDMESS="Garder le focus après l'envoi d'un message.";
WIM_L_HISTORYFOCUSONLYCITY="Uniquement dans une ville principale.";
WIM_L_SHOWTOOLTIPS="Afficher les infobulles.";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="Popup lors de l'envoi de chuchotements.";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="Popup lors de la réception de nouveaux chuchotements.";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="Popup lors de la réception de réponses.";
WIM_L_DISABLEPOPUPSINCOMBAT="Désactiver les popups en combat.";
WIM_L_SUPRESSWHISPFROMDEFCHAT="Supprimer les chuchotements du chat par défaut.";
WIM_L_PLAYSOUND="Jouer un son à la réception d'un message.";
WIM_L_SORTCONV="Trier la liste des conversations par ordre alphabétique.";
WIM_L_AFKANDDNDMESS="Afficher les messages AFK et DND.";
WIM_L_ESCTOCLOSEWINDOWS="Utiliser 'Échap' pour fermer les fenêtres.";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="L'utilisation de la touche 'Échap' a ses limites. |cffffffffExemple: Les fenêtres se fermeront lors de l'ouverture de la carte.|r";
WIM_L_INTERCEPTWHISPCOM="Intercepter les commandes de chuchotement.";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM interceptera toutes les commandes de chuchotement et ouvrira automatiquement une nouvelle fenêtre de message. (Exemple: /w ou /whisper).";
WIM_L_CASCADINGDIR="Activer le mode cascade. Direction:";
WIM_L_SETLOC="Définir l'emplacement";
WIM_L_ALIASING="Activer les alias";
WIM_L_SHOWASCOMMENT="Afficher comme commentaire";
WIM_L_BUTNAME="Nom";
WIM_L_BUTALIAS="Alias";
WIM_L_ADD="Ajouter";
WIM_L_ADDNEWALIAS="Ajouter un nouvel alias";
WIM_L_REMOVE="Supprimer";
WIM_L_EDIT="Modifier";
WIM_L_EDITALIAS="Modifier l'alias";
WIM_L_ENABLEFILTER="Activer le filtrage";
WIM_L_KEYWORDSANDPHRASES="Mots-clés/Phrases";
WIM_L_ACTION="Action";
WIM_L_ADDNEWFILTER="Ajouter un nouveau filtre";
WIM_L_EDITFILTER="Modifier le filtre";
WIM_L_ENABLEHISTORY="Activer l'historique";
WIM_L_RECEVERYONE="Enregistrer tout le monde";
WIM_L_RECFRIENDS="Enregistrer les amis";
WIM_L_RECGUILD="Enregistrer la guilde";
WIM_L_INCOMMESS="Messages entrants";
WIM_L_OUTGOMMESS="Messages sortants";
WIM_L_SHOWHISTORYINMESS="Afficher l'historique dans le message:";
WIM_L_SETMAXMESSPERUSER="Nombre max de messages par utilisateur:";
WIM_L_DELMESSOLDERTHAN="Supprimer les messages plus anciens que:";
WIM_L_RECORDEDUSERS="Utilisateurs enregistrés";
WIM_L_SAVEDMESS="Messages sauvegardés";
WIM_L_DELUSER="Supprimer l'utilisateur";
WIM_L_VIEWHISTORY="Voir l'historique";
WIM_L_CHARNAME="Nom du personnage";
WIM_L_CHARALIAS="Alias du personnage";
WIM_L_CANCEL="Annuler";
WIM_L_OK="OK";
WIM_L_PERFORMFOLLACT="Effectuer l'action suivante:";
WIM_L_ERREXAMPLEERRMESS="ERREUR: Exemple de message d'erreur";
WIM_L_KEYWORDSANDPHRASETOFILTER="Mot-clé/Phrase à filtrer";
WIM_L_IGNORE="Ignorer";
WIM_L_BLOCK="Bloquer";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="Aucun nouveau message.";
WIM_L_RECENTCONV="Conversation récente %d sur %d";
WIM_L_WIMDOC="Documentation WIM";
WIM_L_DESCRIPTION=" Description ";
WIM_L_VERSIONHISTORY=" Historique des versions ";
WIM_L_DIDYOUKNOW=" Le saviez-vous? ";
WIM_L_CREDITS=" Crédits ";
--options.lua
WIM_L_ICONPOSIT="Position de l'icône";
WIM_L_FONTSIZE="Taille de police";
WIM_L_WINDOWSIZEPERC="Taille de fenêtre (pourcentage)";
WIM_L_TRANSPARENCYPERC="Transparence (pourcentage)";
WIM_L_WINDOWWIDTH="Largeur de fenêtre";
WIM_L_WINDOWHEIGHT="Hauteur de fenêtre";
WIM_L_UP="Haut";
WIM_L_DOWN="Bas";
WIM_L_LEFT="Gauche";
WIM_L_RIGHT="Droite";
WIM_L_UPANDLEFT="Haut & Gauche";
WIM_L_UPANDRIGHT="Haut & Droite";
WIM_L_DOWNANDLEFT="Bas & Gauche";
WIM_L_DOWNANDRIGHT="Bas & Droite";
WIM_L_DRAGTOSETDEFSPAWN="Faites glisser pour définir la position\npar défaut des fenêtres de message.";
WIM_L_DAY="Jour";
WIM_L_WEEK="Semaine";
WIM_L_MONTH="Mois";
WIM_L_ERRINVALIDKEYWORD="ERREUR: Mot-clé/Phrase invalide!";
WIM_L_ERRKEYWORDALREADYUSED="ERREUR: Mot-clé/Phrase déjà utilisé!";
WIM_L_ERRNAMEALREADYUSED="ERREUR: Nom déjà utilisé!";
WIM_L_ERRINVALIAS="ERREUR: Alias invalide!";
WIM_L_ERRINVNAME="ERREUR: Nom invalide!";
WIM_L_WINDOWHEIGHTLIM="Hauteur de fenêtre |cffffffff(Limitée par la barre de raccourcis)|r";
--history.lua
WIM_L_NONESHOWALL="Aucun (Tout afficher)";
--history.xml
WIM_L_HISTORYVIEWER="Visionneuse d'historique WIM";
WIM_L_USERS="Utilisateurs";
WIM_L_FILTERS2="Filtres";
WIM_L_MESS="Messages";
--urlcopy.xml
WIM_L_URLCOPY="Copier l'URL";
--wim.lua
WIM_L_NONE=" - Aucun -";
WIM_L_NONEC="|cffffffff - Aucun -";
WIM_L_INSPECT="Inspecter";
WIM_L_TRADE="Échanger";
WIM_L_INVITE="Inviter";
WIM_L_TARGET="Cibler";
WIM_L_GAMEMASTER="Maître du jeu";
WIM_L_DATE_FORMAT="%d/%m/%y";
WIM_L_NEWMESSAGE="Nouveau message !";
WIM_L_CONVCLOSED="Conversation fermée.";
WIM_L_PURGEDMESSAGES="[WIM]: %d messages obsolètes supprimés de l'historique.";
--wim_titan.lua
WIM_L_MESSAGES="Messages : ";
--wim.xml
WIM_L_XTOOLTIP="Shift &amp; Clic gauche pour terminer la conversation.";
WIM_L_HISTORYTOOLTIP="Cliquez pour voir l'historique des messages.";
WIM_L_RUSUREYOUWANTIGNORE="Êtes-vous sûr de vouloir\nignorer cet utilisateur?";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM est exactement ce que son nom indique; une interface de messagerie instantanée pour vos chuchotements en jeu. Il a été spécialement conçu pour ne pas interférer avec votre interface (en raid) tout en offrant le confort d'une fenêtre de chat pour chaque utilisateur.

Consultez vos raccourcis clavier et cherchez les actions disponibles pour WIM.
|r
Commandes utiles:
/wim			|cffffffff- Fenêtre d'options|r
/wim history	|cffffffff- Visionneuse d'historique|r
/wim help		|cffffffff- (cette fenêtre)|r

Commandes avancées:
/wim reset			|cffffffff- Réinitialiser toutes les options.|r
/wim reset filters	|cffffffff- Recharger les définitions de filtres.|r
/wim clear history	|cffffffff- Effacer l'historique.|r

WIM s'intègre aux addons suivants:|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
Le saviez-vous...|cffffffff En tapant la commande |r/wim |cffffffffvous ouvrez l'interface d'options où vous pouvez personnaliser WIM?|r

Le saviez-vous...|cffffffff WIM est livré avec un plugin Titan Panel intégré? Cherchez-le dans le menu des plugins de Titan!|r

Le saviez-vous...|cffffffff Si vous allez dans "Raccourcis clavier" du menu principal, vous pouvez trouver des raccourcis utiles pour WIM?|r

Le saviez-vous...|cffffffff Vous pouvez rendre l'icône de la minicarte librement mobile? En mode libre, vous pouvez Shift-Clic gauche sur l'icône pour la déplacer où vous voulez.|r

Le saviez-vous...|cffffffff En appuyant sur Tab dans un message, vous pouvez basculer entre les autres messages?|r

Le saviez-vous...|cffffffff WIM a tellement d'options qu'il y a une barre de défilement dans l'onglet général? Allez voir!|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) par Pazza <Bronzebeard>.
|cffffffffLe concept et les idées proviennent de Sloans <Bronzebeard>.|r

Je voudrais remercier tous ceux qui ont aidé à tester WIM et envoyé leurs commentaires et suggestions:
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Tout le monde dans Resurgence <Bronzebeard>
|r

Je voudrais également remercier tous ceux qui ont contribué sur ui.WorldOfWar.net et Curse-Gaming.com.
]]
