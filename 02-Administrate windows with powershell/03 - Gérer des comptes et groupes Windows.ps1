#Lister tous les utilisateurs
Get-LocalUser

#Obtenir des informations sur un compte utilisateur
Get-LocalUser -Name admin | Select-Object  *

#Créer un nouvel utilisateur sans mot de passe
New-LocalUser -Name User1 -Description "Utilisateur test" -FullName "Jean Dupont" -NoPassword

#Créer un nouvel utilisateur avec mot de passe
$MotDePasse = ConvertTo-SecureString "alphorm" -AsPlainText -Force
New-LocalUser -Name User2 -Description "Utilisateur test" -FullName "Jean Dubois" -Password $MotDePasse

#Créer un nouvel utilisateur avec expiration
$MotDePasse = ConvertTo-SecureString "alphorm" -AsPlainText -Force
New-LocalUser -Name User3 -Description "Utilisateur test" -FullName "Jean Dupont" -Password $MotDePasse -AccountExpires "17/07/2019"

#Renommer un utilisateur
Rename-LocalUser -Name user1 -NewName user4

#Modifier les paramètres d'un compte utilisateur
Set-LocalUser -Name user1 -AccountExpires "12/02/2019"

#le mot de passe n'expire jamais
Set-LocalUser -Name user1 -PasswordNeverExpires:$true

#Nouvelle description
Set-LocalUser -Name user1 -Description "Nouvelle description"

#Désactiver un compte utilisateur
Disable-LocalUser -Name user1

#Activer un compte utilisateur
Enable-LocalUser -Name user1

#Supprimer un utilisateur
Remove-LocalUser -Name user1

#--- Gestion des groupes

#Lister tous les groupes
Get-LocalGroup

#Récuperer un seul groupe
Get-LocalGroup -Name administrateurs | Select-Object *

#Créer un nouveau groupe
New-LocalGroup -Name GROUP_TEST -Description "Test nouveau groupe"

#Renommer un groupe
Rename-LocalGroup -Name group_test -NewName group_user1

#Modifier un groupe
Set-LocalGroup -Name group_user -Description "Test nouvelle description"

#Supprimer un groupe
Remove-LocalGroup -Name group_user1

#--- Gestion des membres de groupes

#Lister les membres d'un groupe
Get-LocalGroupMember -Name administrateurs

#Ajouter un membre à un groupe
Add-LocalGroupMember -Group administrateurs -Member user1

#Supprimer un membre d'un groupe
Remove-LocalGroupMember -Group administrateurs -Member user1