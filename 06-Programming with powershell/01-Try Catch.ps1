#Mettre les erreurs en critique
$ErrorActionPreference = "Stop"

#Bloc Try Catch Finnally

try {
    Get-Item c:\nonexistant.txt
}
catch 
{
    Write-Host "Le fichier n'existe pas"
}

finally
{
    Write-Host "Traitement terminé"
}