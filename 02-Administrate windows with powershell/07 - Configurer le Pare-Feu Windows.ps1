#---- Profil Pare-Feu ----#

#Lister les profiles du parefeu
Get-NetFirewallProfile | Format-Table

#Modifier les param�tres par d�faut d'un profil
Set-NetFirewallProfile -Name Private -DefaultInboundAction block

#Activer ou d�sactiver un profil
Set-NetFirewallProfile -Name Domain -Enabled false

#Voir sur quel profil on est connect�
Get-NetConnectionProfile

#Modifier le profil sur lequel on est connect�
Set-NetConnectionProfile -NetworkCategory private

#---- Obtenir les r�gles du Pare-Feu ----#

#Lister toutes les r�gles du parefeu
Get-NetFirewallRule 

#Lister les r�gles du parefeu du profil public
Get-NetFirewallRule | Where-Object -Property Profile -EQ Public

#Lister toutes les r�gles entrantes
Get-NetFirewallRule | Where-Object -Property Direction -EQ Inbound

#Lister les r�gles autoris�s
Get-NetFirewallRule | Where-Object -Property Action -EQ Allow 

#---- Cr�er des nouvelles r�gles ----#

#Cr�er une nouvelle r�gle - par d�faut, la r�gle s'applique � tous les profiles
New-NetFirewallRule -DisplayName "Bloquer le ports 80" -Description "Cette r�gle permet de bloquer le trafic vers le port 80" -Direction Outbound -RemotePort 80 -Protocol TCP -Action Block 

#Cr�er une nouvelle r�gle - sp�cifier le profil
New-NetFirewallRule -DisplayName "Bloquer le ports 443" -Description "Cette r�gle permet de bloquer le trafic vers le port 443" -Profile Private -Direction Outbound -RemotePort 443 -Protocol TCP -Action Block 

#Bloquer un programme en sortie
New-NetFirewallRule -DisplayName "Bloquer Internet Explorer" -Direction Outbound -Protocol tcp -Program "C:\Program Files\internet explorer\iexplore.exe" -Action Block

#---- Modifier les r�gles ----#

#Modifier une r�gle - Activer ou d�sactiver
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Enabled False
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Enabled True

#Modifier une r�gle
Set-NetFirewallRule -DisplayName "Bloquer le ports 80" -Action Allow

#---- Supprimer une r�gle ----#

#Supprimer une r�gle
Remove-NetFirewallRule -DisplayName "Bloquer le ports 80"

