#Switch
Write-Host "Entrez votre ville : " -NoNewline  
$Ville = Read-Host

switch($Ville)
{
    "Paris" {"Vous habitez à Paris, vous êtes éligible"}
    "Lyon"  {"Vous habitez à Lyon, vous êtes éligible" }
    default {"Vous êtes pas éligible"}
    
}
