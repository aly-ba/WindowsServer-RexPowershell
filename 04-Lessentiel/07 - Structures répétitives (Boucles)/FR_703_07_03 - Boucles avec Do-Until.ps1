
do 
    {  
       Write-Host "Attente du démarrage du serveur"
       Start-Sleep -Seconds 1
    }
until (Test-Connection 8.8.8.8 -Quiet -Count 1)
