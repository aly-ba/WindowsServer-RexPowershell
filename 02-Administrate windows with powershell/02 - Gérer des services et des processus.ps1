#Lister les services
Get-Service

#Récupérer un service
Get-Service Themes | Select-Object *

#Récupérer les dépendances d'un service
Get-Service winrm -RequiredServices

#Récupérer les services qui dependent de ce service
Get-Service AppIDSvc -DependentServices


#Récupérer un service qui commence par wmi
Get-Service wmi*

#Lister les services en cours
Get-Service | Where-Object -Property status -eq "Running"

#Lister les services désactives
Get-Service | Where-Object -Property StartType -eq "Disabled"

#Lister les 5 premiers services
Get-Service | Select-Object -First 5

#Arrêter un service
Stop-Service -Name Audiosrv

#Démarré un service
Start-Service -Name Audiosrv

#redémarrer un service
Restart-Service -Name Audiosrv

#Modifier le type de démarrage du service
Set-Service -Name Themes -StartupType Disabled
Set-Service -Name Themes -StartupType Manual
Set-Service -Name Themes -StartupType Automatic

#Lister les processus
Get-Process

#Obtenir la version d'un process
Get-Process explorer -FileVersionInfo

#Récupérer un process avec toutes ses propriétés
Get-Process explorer | Format-List -Property *

#Lister les 5 premiers processus
Get-Process | Select-Object -First 5

#Lister process avec des propriétés précises
Get-Process | Select-Object ProcessName, id

#Démarrer un process
Start-Process cmd

#Démarrer un process avec des arguments
Start-Process cmd -ArgumentList "/k ipconfig"

#Arrêter un process
Start-Process notepad
Get-Process notepad | Stop-Process

#Lancer un processus et attendre qu'il se termine pour passer à une action suivante
Start-process notepad ; Wait-Process notepad ; Write-Host "Notepad vient d'être fermé. CMD va s'ouvrir" ; Start-Process cmd







