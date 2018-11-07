#process windows powershell 
#$_ current value in the pipeline
dir  | foreach -begin {$num=0 }  -process { $num +=$_.Length } -end  {echo "Total:" $num" bytes."}

#les instances qui sommes plus de 20Mb de ram
Get-Process | Where-Object {$_.WorkingSet -ge 20MB}

#Exemple:
Get-Process | foreach -process {echo  $_.WorkingSet  }

dir | Select-Object Name,LastAccessTime

dir | Select-Object Name, @{Name="LastaAccessWeelDay"; Expression={$_.LastAccessTime.DayOfWeek}}

#Process 
Get-Process | Sort CPU -desc | Select -first  2  | Stop-Process


#Lister les droits d'accés sur une repertoire
dir | Get-Acl

dir | Get-Acl | Select Owner  | Sort Owner | Get-Unique -asString

#lister les services et les grouper suivant leur status 

Get-Service | Group-Object Status

#Some Exemple
Get-Process notepad | Tee-Object -variable victims | Stop-Process
$victims | select ProcessName,HasExited


PS C:\> diff (dir PowerShellBackup) (dir PowerShell) | ~CCC
    where { $_.SideIndicator -eq "=>" } |              ~CCC
    foreach { copy "C:\PowerShell\$($_.InputObject)"   ~CCC
        "C:\PowerShellBackup" }