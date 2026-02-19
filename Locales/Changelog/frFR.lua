if GetLocale() ~= "frFR" then return end

WIM_CHANGE_LOG = [[
|rVersion 1.3.12 (19/02/2026)|cffffffff
[*] - Tentative de correction des raccourcis clavier qui ne fonctionnaient pas avec une fenêtre WIM ouverte

|rVersion 1.3.11 (18/02/2026)|cffffffff
[*] - La case « Afficher les infos du personnage » contrôle maintenant correctement les recherches de joueurs
[*] - Correction des blocages du jeu causés par la recherche de joueurs (/who) restant bloquée

|rVersion 1.3.10 (14/02/2026)|cffffffff
[*] - Le shift+clic fonctionne maintenant de manière fiable dans les fenêtres WIM (objets, quêtes, sorts, etc.)
[*] - Les liens ne sont plus dupliqués lorsque WIM et le chat par défaut sont ouverts en même temps
[*] - Compatibilité améliorée avec pfQuest et d'autres addons utilisant le shift+clic pour lier
[*] - /wim reset réinitialise maintenant correctement tous les paramètres
[*] - L'option « Intercepter les commandes de chuchotement » fonctionne maintenant correctement
[*] - Les informations du joueur (niveau, classe, guilde) ne restent plus bloquées sur certains joueurs
[*] - Amélioration des performances de l'addon

|rVersion 1.3.9 (11/02/2026)|cffffffff
[*] - Correction d'un crash pouvant survenir à la connexion
[*] - Le popup d'historique affiche maintenant le bon nombre de messages
[*] - La commande /who n'est plus interceptée inutilement par WIM
[*] - Les nouveaux paramètres par défaut sont maintenant correctement appliqués lors de la mise à jour depuis une ancienne version
[*] - Correction du shift+clic sur les emplacements vides d'équipement et d'inventaire
[*] - Correction du shift+clic sur les réactifs dans les fenêtres de métier qui pouvait lier le mauvais objet
[*] - Les clics sur les objets avec AllInOneInventory ou EngInventory ne sont plus traités deux fois
[*] - L'auto-complétion des noms en chuchotement suggère maintenant correctement la première correspondance
[*] - Correction d'erreurs potentielles lors de la fermeture de fenêtres via Échap ou d'autres addons

|rVersion 1.3.8 (11/02/2026)|cffffffff
[*] - Shift+clic dans le Journal de quêtes insère maintenant les quêtes et leurs récompenses dans les fenêtres WIM
[*] - La touche de réponse ne nécessite plus un double appui pour le focus
[*] - Correction du crash lors de la fermeture d'une fenêtre pendant une requête WHO
[*] - Le filtre de date dans l'historique ne se réinitialise plus en cliquant sur le même nom
[*] - Correction de "&amp;" affiché au lieu de "&" dans l'infobulle du bouton fermer
[+] - Le format de date dans l'historique s'adapte maintenant à la langue du jeu
[-] - Suppression des filtres anti-spam par défaut obsolètes

|rVersion 1.3.7 (02/02/2026)|cffffffff
[*] - Les couleurs de classe correspondent maintenant exactement aux valeurs du jeu (DBFBlackbull)
[*] - Les macros de chuchotement (/w Nom message) s'envoient maintenant correctement (Kirchlive)

|rVersion 1.3.6 (02/02/2026)|cffffffff
[+] - Traduction complète de l'interface pour les 9 langues supportées

|rVersion 1.3.5 (29/12/2025)|cffffffff
[+] - Les messages s'affichent maintenant instantanément ; les infos du joueur se chargent en arrière-plan (me0wg4ming)
[+] - Les chuchotements de MJ sont maintenant mis en évidence (me0wg4ming)

|rVersion 1.3.4 (28/07/2025)|cffffffff
[*] - Correction de l'affichage des caractères cyrilliques
[+] - Améliorations de la localisation et de l'interface (KasVital)

|rVersion 1.3.3 (27/12/2017)|cffffffff
[+] - Refactorisation par shirsig

|rVersion 1.3.2 (05/01/2017)|cffffffff
[+] - Traduit en russe (ruRU)

|rVersion 1.3.1 (17/10/2006)|cffffffff
[+] - Création d'un nouveau menu d'icône de minicarte. N'utilise plus le menu déroulant de Blizzard.
[+] - Vous pouvez maintenant fermer les conversations depuis le menu de l'icône de minicarte.
[*] - Modifications de code requises pour le plugin Titan et le nouveau menu d'icône de minicarte.
[*] - La fenêtre Who n'apparaît plus lors d'une conversation avec un MJ ou un utilisateur hors ligne.
[+] - WIM remplace le bouton "Envoyer un message" dans le cadre des Amis.
[+] - Intercepte maintenant les commandes /w et /whisper et ouvre une fenêtre de message.
[+] - Ajout d'une option pour activer/désactiver l'interception des commandes de chuchotement.
[+] - Ajout du support pour LootLink.
[+] - Ajout du support pour EngInventory.
[+] - Vous pouvez maintenant exécuter des commandes slash dans une fenêtre de message.

|rVersion 1.2.13 (03/10/2006)|cffffffff
[*] - Correction du bug qui cause une erreur si Titan n'est pas chargé.

|rVersion 1.2.12 (03/10/2006)|cffffffff
[+] - Ajout du support pour AtlasLoot.
[+] - Ajout d'une option pour garder le focus uniquement dans une grande ville.
[+] - Ajout d'une option pour ne pas afficher les messages AFK et DND.
[+] - Ajout d'une option pour Activer/Désactiver l'utilisation de la 'Touche Échap' pour fermer les fenêtres.
[+] - Ajout des raccourcis clavier 'Afficher' et 'Masquer tous les messages'.
[+] - Ajout d'une barre de défilement à l'onglet des options générales. (plus de place !).
[*] - Correction de l'erreur nil dans la fonction WIM_LoadGuildList(). (merci Misschief).
[+] - Vous pouvez maintenant lier des objets depuis la fenêtre de butin.
[+] - Ajout du support pour AllInOneInventory.
[*] - La fenêtre Who ne devrait plus apparaître lors de la recherche de noms similaires.
[*] - Titan est maintenant listé comme dépendance optionnelle.

|rVersion 1.2.11 (29/09/2006)|cffffffff
[*] - Correction d'une faute d'orthographe dans l'onglet Fenêtres.
[*] - Ne lance plus de requête /who sur les utilisateurs d'autres royaumes.
[+] - Obtention des informations sur les utilisateurs d'autres royaumes depuis les infos de raid.
[*] - La fenêtre de basculement de messages n'affiche que les utilisateurs uniques comme prévu.
[+] - Le basculement amène maintenant la fenêtre au premier plan si elle est derrière une autre.
[+] - Le basculement de fenêtres active maintenant automatiquement le focus quand un message est sélectionné.
[+] - La touche TAB bascule maintenant entre les fenêtres lorsqu'on est déjà focalisé dans une autre.
[+] - Vous pouvez maintenant lier des objets depuis l'écran d'inspection.
[+] - Vous pouvez maintenant lier des objets dans SuperInspect.
[+] - Ajout de l'onglet "Le saviez-vous ?" dans l'aide.
[+] - Ajout de l'onglet "Crédits" dans l'aide.
[+] - Ajout d'un bouton à l'écran des options pour accéder à l'aide.

|rVersion 1.2.10 (26/09/2006)|cffffffff
[*] - Ajustement mineur du comportement du focus des fenêtres.
[+] - Modification de la fenêtre d'options pour inclure les options d'alias, de filtrage et d'Historique
[+] - Ajout du Filtrage d'Alias : (1: remplacer le nom; 2: afficher comme commentaire);
[+] - Ajout du Filtrage de Mots-clés/Phrases : (1: Ignorer (par WIM); 2: Bloquer (complètement))
[+] - Ajout des règles de filtre CT_RABM par défaut.
[+] - Ajout du moteur d'historique et des options.
[+] - Ajout du visualiseur d'historique. ( /wim history )
[*] - La barre de raccourcis conserve maintenant sa transparence à 100%.
[+] - Ajout d'un bouton à la fenêtre de message pour accéder à l'historique s'il existe.
[+] - Ajout d'options pour définir la position par défaut de la fenêtre.
[+] - Ajout d'une option pour Activer/Désactiver la cascade de fenêtres.
[+] - Ajout d'une option pour changer la direction de la cascade de fenêtres.
[+] - Ajout des raccourcis clavier.
[+] - Ajout d'un raccourci clavier pour parcourir les conversations récentes.
[+] - Ajout d'un écran d'aide. ( /wim help )

|rVersion 1.1.15 (19/09/2006)|cffffffff
[+] - Ajout d'une option pour afficher les infos du personnage (requêtes /who).
[+] - Ajout d'une option pour afficher l'icône de classe. (icône par défaut mise à jour).
[*] - L'icône de minicarte ne s'affiche plus au-dessus de toutes les autres fenêtres sauf en mode de déplacement libre.
[+] - Vous pouvez maintenant lier des objets dans votre fenêtre de personnage.
[+] - Vous pouvez maintenant lier des objets depuis les fenêtres de métiers.
[+] - Vous pouvez maintenant lier des objets depuis les fenêtres d'artisanat (ex: Enchantement)
[+] - Ajout d'une option pour définir la couleur de classe pour le texte de la barre de titre.
[+] - Ajout d'une option pour afficher les horodatages.
[+] - Ajout d'une option pour Activer/Désactiver WIM.
[+] - Ajout d'une barre de raccourcis (et options appropriées).
[+] - Ajout d'informations détaillées sur le personnage. (Guilde, niveau, race, classe).

|rVersion 1.1.4 (15/09/2006)|cffffffff
[+] - Ajout du plugin Titan intégré.
[*] - La transparence n'affecte plus le texte du chat.
[*] - Le menu de minicarte s'ouvre maintenant à gauche comme prévu.
[+] - Création de nouveaux graphiques pour la fenêtre de message.
[+] - Fenêtre de message recréée - maintenant redimensionnable !
[+] - Fenêtre d'options réorganisée et création d'un onglet pour les options de fenêtre
[-] - Suppression de l'option 'Afficher l'infobulle de la minicarte'.
[+] - Ajout de l'option 'Afficher les infobulles'.
[*] - Reformulation de l'option de popup lors de la réception de réponses (fonctionnait comme prévu).
[*] - Les fenêtres ne peuvent plus être positionnées en dehors de l'interface.
[+] - Ajout d'une option pour trier la liste des conversations alphabétiquement (sinon par ordre de réception).
[+] - Ajout d'options pour modifier la hauteur et la largeur des fenêtres de message.
[+] - Les fenêtres de message peuvent maintenant être déplacées par le cadre de chat.
[+] - Cliquer sur le cadre de chat donne maintenant le focus à la zone de message.
[+] - Ajout de la possibilité de fermer une conversation.
[+] - Ajout d'une icône de minicarte à déplacement libre. (Déplacer n'importe où sur votre écran).
[+] - Shift-Clic sur le bouton de défilement fait maintenant défiler page par page.
[+] - Shift-Molette fait maintenant défiler page par page.
[+] - Ajout d'une option pour désactiver les popups en combat.
[+] - Ajout des icônes de classe à la fenêtre de message.

|rVersion 1.0.19 (12/09/2006) |cffffffff
[*] - Correction du problème avec les langues du jeu (Commun/Orque). Cela devrait également résoudre les problèmes avec d'autres interfaces WoW linguistiques.
[*] - Réécriture de certains hooks de fonctions pour éviter de recevoir des messages en double à cause de conflits d'addons.

|rVersion 1.0.18 (12/09/2006) |cffffffff
[!] - Première version publique.

]]
