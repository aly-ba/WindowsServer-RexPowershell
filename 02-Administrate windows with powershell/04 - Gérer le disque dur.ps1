#Lister tous les disque durs
Get-Disk

#En formatant 
get-disk | format-list

#Récupérer toutes les propriétés
get-disk | select-object -Property *

#Initialiser un disque
Initialize-Disk -Number 1 -PartitionStyle MBR

#Créer une nouvelle partition
New-Partition -DiskNumber 1 -UseMaximumSize -AssignDriveLetter

#Formater un volume
Format-Volume -DriveLetter E -FileSystem NTFS

#Lister les volumes de tous les disques et de toutes les partitions
Get-Volume

#Redimensionner les partitions
Resize-Partition -DiskNumber 1 -PartitionNumber 1 -Size 10GB

#Nouvelle partition
New-Partition -DiskNumber 1 -Size 20GB -AssignDriveLetter

#Reformater
Format-Volume -DriveLetter F -FileSystem NTFS

#Supprimer une partition
Remove-Partition -DiskNumber 1 -PartitionNumber 2

#Récupérer l'intégralité de l'espace
#D'abord récupérer la taille de la partition
Get-PartitionSupportedSize -DiskNumber 1 -PartitionNumber 1
#Et ensuite resize
Resize-Partition -DiskNumber 1 -PartitionNumber 1 -Size 64422412288


#Lister toutes les partitions de tous les disques
Get-Partition

#Récupérer les partitons d'un seul disque
get-partition -DiskNumber 1

#Récupérer les partitions d'un disque avec sa lettre
Get-Partition -DriveLetter c

#Optimiser un volume
Optimize-Volume -DriveLetter h 

#Supprimer la lettre d'un lecteur
Remove-PartitionAccessPath -DiskNumber 1 -PartitionNumber 2 -AccessPath p:

#Ajouter une lettre à un lecteur
Add-PartitionAccessPath -DiskNumber 1 -PartitionNumber 2 -AccessPath p:

#Partition en lecteur seule
Set-Partition -DriveLetter P -IsReadOnly:$true

#Changer la lettre d'une partition
Set-Partition -DriveLetter P -NewDriveLetter I

#Mettre un disque et toutes ses partitions en readonly
Set-Disk -Number 1 -IsReadOnly:$true 

#Mettre un disque offline
Set-Disk -Number 1 -IsOffline:$true

