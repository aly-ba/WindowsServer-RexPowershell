#Lister les services
Get-Service

#R�cup�rer un service
Get-Service Themes | Select-Object *

#R�cup�rer les d�pendances d'un service
Get-Service winrm -RequiredServices

#R�cup�rer les services qui dependent de ce service
Get-Service AppIDSvc -DependentServices


#R�cup�rer un service qui commence par wmi
Get-Service wmi*

#Lister les services en cours
Get-Service | Where-Object -Property status -eq "Running"

#Lister les services d�sactives
Get-Service | Where-Object -Property StartType -eq "Disabled"

#Lister les 5 premiers services
Get-Service | Select-Object -First 5

#Arr�ter un service
Stop-Service -Name Audiosrv

#D�marr� un service
Start-Service -Name Audiosrv

#red�marrer un service
Restart-Service -Name Audiosrv

#Modifier le type de d�marrage du service
Set-Service -Name Themes -StartupType Disabled
Set-Service -Name Themes -StartupType Manual
Set-Service -Name Themes -StartupType Automatic

#Lister les processus
Get-Process

#Obtenir la version d'un process
Get-Process explorer -FileVersionInfo

#R�cup�rer un process avec toutes ses propri�t�s
Get-Process explorer | Format-List -Property *

#Lister les 5 premiers processus
Get-Process | Select-Object -First 5

#Lister process avec des propri�t�s pr�cises
Get-Process | Select-Object ProcessName, id

#D�marrer un process
Start-Process cmd

#D�marrer un process avec des arguments
Start-Process cmd -ArgumentList "/k ipconfig"

#Arr�ter un process
Start-Process notepad
Get-Process notepad | Stop-Process

#Lancer un processus et attendre qu'il se termine pour passer � une action suivante
Start-process notepad ; Wait-Process notepad ; Write-Host "Notepad vient d'�tre ferm�. CMD va s'ouvrir" ; Start-Process cmd







