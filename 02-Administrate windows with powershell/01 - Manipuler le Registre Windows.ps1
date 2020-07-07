#Lister les clés du registre
Get-ChildItem -Path hkcu: | Select-Object Name

#Lister une valeur du registre
Get-Item -Path HKCU:\Environment

#Selectionner que les valeurs
(Get-Item -Path HKCU:\Environment).Property

#Créer une nouvelle clé
New-Item -Path hkcu: -Name NouveCle

#Supprimer une clé
Remove-Item -Path hkcu:\NouveCle

#Lister les valeurs d'une clé
Get-ItemProperty -Path HKCU:\Environment

#Récupérer une valeur précise
(Get-ItemProperty -Path HKCU:\Environment).tmp

#Créer une nouvelle valeur de type chaine de caractère
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType String  -Value "ValeurCle" 

#Créer une nouvelle valeur de type binaire
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType binary -Value "00011"

#Créer une nouvelle valeur de type DWORD 32
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType DWord -Value "3232"
#DWORD en Hexa
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType DWord -Value "0xFF"

#Créer une nouvelle valeur de type QWORD 64
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType Qword -Value "6464"
#QWORD en Hexa
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType Qword -Value "0xAF"

#Créer une nouvelle valeur sur plusieurs lignes
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType MultiString -Value 'PowerShell','Python','Bash'

#Créer une nouvelle valeur extensible
New-ItemProperty -Path HKCU:\Environment -Name NouvelleCle -PropertyType ExpandString -Value 'c:\program files\test\'

#Modifier une valeur
Set-ItemProperty hkcu:\environment -Name NouvelleCle -Value "nouvelle valeur"

#Vider une valeur
Clear-ItemProperty -Path HKCU:\Environment -Name NouvelleCle

#Supprimer une valeur
Remove-ItemProperty -Path HKCU:\Environment -Name "nouvellecle" 

Remove-ItemProperty -Path "HKLM:\Software\SmpApplication" -Name "SmpProperty"

PS C:\> Set-Location HKCU:\Software\MyCompany\MyApp
PS HKCU:\Software\MyCompany\MyApp> Remove-ItemProperty -Path . -Name "Options" -Confirm

Get-Item -Path HKLM:\Software\MyCompany | Remove-ItemProperty -Name NoOfEmployees