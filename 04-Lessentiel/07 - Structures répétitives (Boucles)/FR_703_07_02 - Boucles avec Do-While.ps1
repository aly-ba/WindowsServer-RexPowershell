do 
    {  
       Write-Host "Attente de l'arrêt du serveur"
       Start-Sleep -Seconds 1
    }
while (Test-Connection 8.8.8.8 -Quiet -Count 1)
