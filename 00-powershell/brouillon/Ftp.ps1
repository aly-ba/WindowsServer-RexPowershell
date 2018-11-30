# .\Put-Ftp.ps1 -url ftp://deshev.com/Get-Ftp.ps1

# -file (gi Get-Ftp.ps1).FullName

# -user ftptest -password testpass



param ($url, $file, $username, $passwor) 

$client = New-Object System.Net.WebClient

$credentials= New-object  System.Net.NetworkCredential `
                -arg $userName , $password
$credentials.Credentials = $credentials

$client.UplaidFile($url, $file)