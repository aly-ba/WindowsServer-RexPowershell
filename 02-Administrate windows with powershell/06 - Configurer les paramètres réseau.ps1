#Tester la connexion vers un ou plusieurs serveurs
Test-Connection google.fr
Test-Connection google.fr, alphorm.com

#Définir le nombre de ping
Test-Connection google.fr, alphorm.com -Count 1

#Définir la taille du buffer
Test-Connection google.fr -Count 1 -BufferSize 128


#Afficher toutes les cartes réseaux
Get-NetAdapter

#Afficher les cartes réseaux cachées
Get-NetAdapter -IncludeHidden

#Récupérer toutes les propriétés
Get-NetAdapter -InterfaceIndex 5 | Select-Object -Property *

#Récupérer l'adresse mac
(Get-NetAdapter -InterfaceIndex 5).MacAddress

#Lister les cartes réseaux avec leur configuration IP
Get-NetIPAddress

#Lister les cartes réseaux en IPv4 ou en IPv6
Get-NetIPAddress -AddressFamily IPv4

#Récupérer une carte réseau en fonction de son index 
Get-NetIPAddress -InterfaceIndex 10

#Configurer une adresse IP
New-NetIPAddress -InterfaceIndex 10 -IPAddress 192.168.0.1 -PrefixLength 24 -DefaultGateway 192.168.0.5

#Modifier une adresse IP - d'abord supprimer l'ip
Remove-NetIPAddress -InterfaceIndex 10 -IPAddress 192.168.0.1 -PrefixLength 24 -DefaultGateway 192.168.0.5

#Mettre une carte réseau en DHCP
Set-NetIPInterface -InterfaceIndex 10 -Dhcp Enabled

#Modifier les serveurs dns pour une carte réseau
Set-DnsClientServerAddress -InterfaceIndex 10 -ServerAddresses "10.10.10.10","20.20.20.20"

#Modifier les suffixes pour une carte réseau
Set-DnsClient -InterfaceIndex 10 -ConnectionSpecificSuffix "test.lan"

#Modifier les suffixes pour toutes les cartes réseaux
Set-DnsClientGlobalSetting -SuffixSearchList "test2.lan"

#Désactiver carte réseau
Disable-NetAdapter -Name "Ethernet1"

#Activer carte réseau
Enable-NetAdapter -Name "Ethernet1"


#Lister toutes les connexions  - équivalent netstat
Get-NetTCPConnection

#Lister toutes les connexions actives en état établi
Get-NetTCPConnection -State Established

#Lister toutes les connexions actives en écoute
Get-NetTCPConnection -State Listen

#Lister toutes les connexions sur le port distant spécifié
Get-NetTCPConnection -RemotePort 443


#Résoudre les nom dns
Resolve-DnsName google.fr

#Résoudre les nom dns avec le type SOA
Resolve-DnsName google.fr -Type SOA

#Résoudre les nom dns avec tous les types
Resolve-DnsName google.fr -Type all
