#Aller sur : https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms?view=netcore-3.1


Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


$NomUtilisateur = [Environment]::UserName
$NomPC = [System.Environment]::MachineName
$Ram = (Get-CimInstance win32_computersystem).TotalPhysicalMemory / 1GB
$VersionSysteme = [System.Environment]::OSVersion
$AdresseIP =(Get-NetIPAddress -InterfaceAlias "Ethernet 3" -AddressFamily IPv4).IPAddress
$AdresseMAC =(Get-NetAdapter -Name "Ethernet 3").MacAddress


$Fenetre = New-Object system.Windows.Forms.Form


$TailleText = New-Object System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Bold)


$Fenetre.Width = "500"
$Fenetre.Height = "300"
$Fenetre.Text = "Informations Système"
$Fenetre.MaximizeBox = $false

$labelInfoSysteme = New-Object System.Windows.Forms.Label
$labelInfoSysteme.Location = New-Object System.Drawing.Point(10,10)
$labelInfoSysteme.AutoSize = $true
$labelInfoSysteme.Text = "Informations Sytème"
$labelInfoSysteme.Font = $TailleText
$Fenetre.Controls.Add($labelInfoSysteme)


$labelNomUtilisateur = New-Object System.Windows.Forms.Label
$labelNomUtilisateur.Location = New-Object System.Drawing.Point(20,40)
$labelNomUtilisateur.AutoSize = $true
$labelNomUtilisateur.Text = "Nom d'utilisateur : $($NomUtilisateur)"
$Fenetre.Controls.Add($labelNomUtilisateur)


$labelNomPC = New-Object System.Windows.Forms.Label
$labelNomPC.Location = New-Object System.Drawing.Point(20,70)
$labelNomPC.AutoSize = $true
$labelNomPC.Text = "Nom du PC : $($NomPC)"
$Fenetre.Controls.Add($labelNomPC)


$labelRam = New-Object System.Windows.Forms.Label
$labelRam.Location = New-Object System.Drawing.Point(20,100)
$labelRam.AutoSize = $true
$labelRam.Text = "Mémoire installée : $([Math]::Round($Ram) )"
$Fenetre.Controls.Add($labelRam)


$labelVersionSysteme = New-Object System.Windows.Forms.Label
$labelVersionSysteme.Location = New-Object System.Drawing.Point(20,130)
$labelVersionSysteme.AutoSize = $true
$labelVersionSysteme.Text = "Version Système : $($VersionSysteme.version)"
$Fenetre.Controls.Add($labelVersionSysteme)



$InfoReseau = New-Object System.Windows.Forms.Label
$InfoReseau.Location = New-Object System.Drawing.Point(10,160)
$InfoReseau.AutoSize = $true
$InfoReseau.Text = "Informations Réseau"
$InfoReseau.Font = $TailleText
$Fenetre.Controls.Add($InfoReseau)


$labelAdresseIP = New-Object System.Windows.Forms.Label
$labelAdresseIP.Location = New-Object System.Drawing.Point(20,190)
$labelAdresseIP.AutoSize = $true
$labelAdresseIP.Text = "Adresse IP : $($adresseIP)"
$Fenetre.Controls.Add($labelAdresseIP)


$labelAdresseMAC = New-Object System.Windows.Forms.Label
$labelAdresseMAC.Location = New-Object System.Drawing.Point(20,220)
$labelAdresseMAC.AutoSize = $true
$labelAdresseMAC.Text = "Adresse MAC : $($AdresseMAC)"
$Fenetre.Controls.Add($labelAdresseMAC)


$Fenetre.ShowDialog()


