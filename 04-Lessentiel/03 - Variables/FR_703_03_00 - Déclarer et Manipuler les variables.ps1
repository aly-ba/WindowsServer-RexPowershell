#Lister les variables de la session courante de PowerShell
Get-Variable

#Récupérer une seule variable
Get-Variable -Name $IsWindows

#Récupérer uniquement la valeur d'une variable
Get-Variable -Name pwd -ValueOnly

#Récupérer une variable en incluant un terme
Get-Variable -Include m*

#Récupérer une variable en excluant un terme
Get-Variable -exclude m*


#Déclarer une variable avec new-variable
New-Variable -Name "NomFichier" -Value "test.exe"

#Donner une description à la variable 
New-Variable -Name "CheminDossier" -Value "C:\windows" -Description "Ceci est un test de déclaration de variable"

#Déclarer une variable en lecture seule 
New-Variable -Name "CheminDossier" -Value "C:\windows" -Option ReadOnly

#Forcer la modification d'une variable en lecture seule
Set-variable -Name CheminDossier -Value "c:\test" -Force

#Remettre une variable modifiable
Set-variable -Name CheminDossier -Option None -Force

#Effacer le contenu d'une variable
Clear-Variable -name CheminDossier

#Détruire une variable
remove-variable -Name CheminDossier
