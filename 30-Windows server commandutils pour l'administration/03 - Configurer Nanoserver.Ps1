
# Stockage des crédentials
$admin = "administrateur"
$password = "pw"
$password = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($admin, $password)

# Ouverture de session PowerShell Direct sur nano1
Enter-PSSession -VMName Nano1 -Credential $cred

# Paramétrages de base - Nanoserver
# Affectation de l'adresse IP
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 10.0.0.99 -PrefixLength 8
# Affectation du serveur DNS
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 10.0.0.1
# Liste les règle de pare-feu pour le partage de fichier et d'imprimante
Get-NetFirewallRule *fps* | Format-Table Name,Enabled
# Active les règle de pare-feu pour le partage de fichier et d'imprimante
Get-NetFirewallRule *fps* | Enable-NetFirewallRule

Exit

# Tester le Ping sur le server Nanoserver depuis le serveur s1

