
# Création des crédentials
$admin = "alphorm\admin"
$password = "pw"
$password = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($admin, $password)

# Ouverture de session PowerShell Direct
Enter-PSSession -VMName s2 -Credential $cred
Exit