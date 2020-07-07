#Lister toutes les classes 
Get-CimClass

#Obtenir des class correspondant à un terme
Get-CimClass -ClassName *bios*

#Obtenir les informations sur le bios
Get-CimInstance Win32_bios

#Obtenir la taille de la ram
Get-CimInstance Win32_ComputerSystem

#Obtenir la taille de la ram
$RamTotal = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
[Math]::Round($RamTotal)

#Obtenir la ram disponible
$RamDisponible = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB
[Math]::Round($RamDisponible,1)

#Obtenir la ram utilisé
[Math]::Round($RamTotal - $RamDisponible,1)

#Obtenir le modèle du processeur
(Get-CimInstance Win32_Processor).Name

#Obtenir le type socket
(Get-CimInstance Win32_Processor).SocketDesignation

#Obtenir le nombre de coeur
(Get-CimInstance Win32_Processor).NumberOfCores

#Obtenir le taux d'utilisation
(Get-CimInstance Win32_Processor).LoadPercentage

#Lister toutes les informations sur le processeur 
Get-CimInstance Win32_Processor | Select-Object -Property *

