#Boucle while
while($Nombre -ne 5)
{
    Write-Host "Entrez un chiffre : " -NoNewline
    $Nombre = Read-Host 
  

    if($nombre -eq 5)
    {
        Write-Host "Bravo ! " -ForegroundColor Green
    }
    else
    {
        Write-Host "Ce n'est pas le bon chiffre" -ForegroundColor red    
    }

}

#Tant que le fichier existe
while ((Test-Path -Path h:\test.txt))
  {  
       Write-Host "Le fichier doit être supprimé pour pouvoir continuer"
       Start-Sleep -Seconds 1
  }


#Tant que le fichier n'existe pas
while ((Test-Path -Path h:\test.txt) -eq $false)
  {  
       Write-Host "Le fichier doit être présent pour pouvoir continuer"
       Start-Sleep -Seconds 1
  }
