
#Avec un else if

Write-Host "Entrez le nom de votre ville : " -NoNewline  
$Ville = Read-Host

if($Ville -eq "Paris")
{
    Write-Host "Vous êtes éligible." -ForegroundColor Green
}
elseif($Ville -eq "Marseille")
{
    Write-Host "Vous êtes éligible." -ForegroundColor Green
}
else 
{
    
    Write-Host "Vous n'êtes pas éligible." -ForegroundColor red
}

