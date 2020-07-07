#---- Profil Pare-Feu ----#

#Lister les profiles du parefeu
Get-NetFirewallProfile | Format-Table

#Modifier les paramètres par défaut d'un profil
Set-NetFirewallProfile -Name Private -DefaultInboundAction block

#Activer ou désactiver un profil
Set-NetFirewallProfile -Name Domain -Enabled false

#Voir sur quel profil on est connecté
Get-NetConnectionProfile

#Modifier le profil sur lequel on est connecté
Set-NetConnectionProfile -NetworkCategory private

#---- Obtenir les règles du Pare-Feu ----#

#Lister toutes les règles du parefeu
Get-NetFirewallRule 

#Lister les règles du parefeu du profil public
Get-NetFirewallRule | Where-Object -Property Profile -EQ Public

#Lister toutes les règles entrantes
Get-NetFirewallRule | Where-Object -Property Direction -EQ Inbound

#Lister les règles autorisés
Get-NetFirewallRule | Where-Object -Property Action -EQ Allow 

#---- Créer des nouvelles règles ----#

#Créer une nouvelle règle - par défaut, la règle s'applique à tous les profiles
New-NetFirewallRule -DisplayName "Bloquer le ports 80" -Description "Cette règle permet de bloquer le trafic vers le port 80" -Direction Outbound -RemotePort 80 -Protocol TCP -Action Block 

#Créer une nouvelle règle - spécifier le profil
New-NetFirewallRule -DisplayName "Bloquer le ports 443" -Description "Cette règle permet de bloquer le trafic vers le port 443" -Profile Private -Direction Outbound -RemotePort 443 -Protocol TCP -Action Block 

#Bloquer un programme en sortie
New-NetFirewallRule -DisplayName "Bloquer Internet Explorer" -Direction Outbound -Protocol tcp -Program "C:\Program Files\internet explorer\iexplore.exe" -Action Block

#---- Modifier les règles ----#

#Modifier une règle - Activer ou désactiver
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Enabled False
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Enabled True

#Modifier une règle
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Action Allow

#---- Supprimer une règle ----#

#Supprimer une règle
Remove-NetFirewallRule -DisplayName "Bloquer le ports 80"

