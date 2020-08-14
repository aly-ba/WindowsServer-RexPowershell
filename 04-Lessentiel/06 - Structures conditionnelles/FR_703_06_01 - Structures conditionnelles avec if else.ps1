Write-Host "Entrez le nom de votre ville : " -NoNewline  
$Ville = Read-Host

if($Ville -eq "Paris")
{
    Write-Host "Vous êtes éligible." -ForegroundColor Green
}
else 
{
    Write-Host "Vous n'êtes pas éligible." -ForegroundColor red
}

#Avec un ou logique 
Write-Host "Entrez le nom de votre ville : " -NoNewline  
$Ville = Read-Host

if($Ville -eq "Paris" -or $Ville -eq  "Marseille")
{
    Write-Host "Vous êtes éligible." -ForegroundColor Green
}
else 
{
    Write-Host "Vous n'êtes pas éligible." -ForegroundColor red
}

#Avec une expression générique

Write-Host "Entrez votre adresse IP : " -NoNewline  
$AdresseIP = Read-Host

if($AdresseIP -like "192.168.2.*")
{
    Write-Host "Vous êtes sur le bon réseau" 
}
else 
{
    
    Write-Host "Vous n'êtes pas sur le bon réseau"
}

#Sur un fichier

if((Get-Item h:\proc.txt -ErrorAction SilentlyContinue).Exists)
{
 
  write-host "Le fichier existe" 
  
}
else
{

   write-host "Le fichier n'existe pas. Souhaitez vous le créer ? Répondez par O ou N : " -NoNewline
   [char]$reponse = read-host
   if($reponse -eq "o")
   {
     
     New-Item -ItemType file -Path h:\proc.txt

   }
   else
   {
     
     "Le fichier ne sera pas créer."

   }

}