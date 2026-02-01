if GetLocale() ~= "frFR" then return end

WIM_CHANGE_LOG = [[
Version 1.3.7 (02/02/2026)|cffffffff
[*] - Les couleurs de classe utilisent maintenant les RAID_CLASS_COLORS intégrés du jeu (DBFBlackbull)
[*] - Correction des chuchotements par macro : /w Nom message s'envoie maintenant correctement (Kirchlive)

Version 1.3.6 (02/02/2026)|cffffffff
[+] - Localisation complète : traduction intégrale de l'interface pour les 9 langues supportées
[+] - Journal des modifications maintenant traduit dans toutes les langues supportées
[+] - Ajout de la documentation README

Version 1.3.5b (02/02/2026)|cffffffff
[*] - Délai WHO : 30s pour Turtle WoW, 5s pour vanilla

Version 1.3.5a (02/02/2026)|cffffffff
[*] - Réactivation de l'option Bloquer bas niveau (fonctionne bien avec inter-faction)

Version 1.3.5 (29/12/2025)|cffffffff
[+] - Les infos WHO se chargent maintenant de manière asynchrone (les messages s'affichent immédiatement)
[+] - File WHO round-robin pour une distribution équitable entre les fenêtres de chuchotement
[+] - Suppression automatique des joueurs de la file WHO après 5 tentatives échouées
[+] - Détection et marquage des chuchotements de MJ (Turtle WoW)
[+] - Ajout de la commande /wimdebug pour déboguer le système WHO
[*] - Délai WHO augmenté à 30s pour la compatibilité Turtle WoW

Version 1.3.4 (28/07/2025)|cffffffff
[*] - Correction de l'affichage des caractères cyrilliques
[+] - Intégration des modifications de KasVital

Version 1.3.3 (27/12/2017)|cffffffff
[+] - Refactorisation par shirsig

Version 1.3.2 (05/01/2017)|cffffffff
[+] - Traduit en russe (ruRU)

Version 1.3.1 (17/10/2006)|cffffffff
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
