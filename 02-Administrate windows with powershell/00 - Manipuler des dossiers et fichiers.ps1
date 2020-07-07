#Lister le contenu d'un répertoire
Get-ChildItem -Path h:\ressources

#Lister le contenu d'un répertoire de manière recursive
Get-ChildItem -Path h:\ressources -Recurse

#Lister uniquement les fichiers texte
Get-ChildItem -Path h:\ressources -Recurse -Include *.txt

#Exclure les fichiers texte et afficher tout le reste
Get-ChildItem -Path h:\ressources -Recurse -Exclude *.txt

#Récupérer que les fichiers
Get-ChildItem -Path h:\ressources -File

#Récupérer que les dossiers
Get-ChildItem -Path h:\ressources -Directory

#Récupérer les fichiers et dossiers cachés
Get-ChildItem -Path h:\ -Hidden

#Récupérer les fichiers et dossiers système
Get-ChildItem -Path h:\ -Hidden -System

#Récupérer les fichiers et dossiers en lecteur seul
Get-ChildItem -Path h:\ -ReadOnly

#Récupérer la propriété Name et CreationTime
Get-ChildItem -Path h:\ressources | Select-Object Name, CreationTime

#Lister un seul élément
Get-Item H:\ressources\fichier1.txt

#Récupérer le chemin complet du fichier
Get-Item H:\ressources\fichier1.txt | Select-Object FullName
(Get-Item H:\ressources\fichier1.txt).FullName

#Vérifier si un fichier existe
(Get-Item H:\ressources\fichier1.txt).Exists

#Date de dernier accès au dossier
(Get-Item h:\ressources).LastAccessTime

#Récupérer toutes les propriétés et méthodes
Get-Item h:\ressources | get-member

#Tester l'existence d'un fichier ou d'un dossier avec la cmdlet test-path
Test-Path -Path c:\windows

#Savoir dans quel répertoire on se trouve actuellement
Get-Location

#Se placer dans un répertoire précis
Set-Location -Path H:\ressources

#Créer un nouveau fichier
New-Item -ItemType File -Path h:\ -Name teste.txt -Value "PowerShell" 

#Créer un nouveau dossier
New-Item -ItemType Directory -Path h:\ -Name DossierTest

#Mettre un fichier en lecture seul
Set-ItemProperty -Path h:\test.txt -Name IsReadOnly -Value $true

#Supprimer un fichier 
Remove-Item -Path H:\teste.txt

#Supprimer un dossier 
Remove-Item -Path H:\DossierTest

#Supprimer un dossier qui n'est pas vide
Remove-Item -Path H:\res -Force

#Copier un fichier
Copy-Item -Path H:\ressources\fichier1.txt -Destination h:\fichier1.txt

#Copier un dossier et son contenu
Copy-Item -Path H:\ressources\ -Recurse -Destination h:\res

#Déplacer un dossier ou un fichier
Move-Item -Path H:\ressources\dossier1 -Destination h:\dossier1

#Renommer un fichier
Rename-Item -Path H:\ressources\fichier1.txt -NewName test.txt