#Switch
<# Write-Host "Entrer votre ville : " -NoNewline
$Ville = Read-Host

switch($Ville) {
    "Paris" {"Vous habitez à Paris, vous êtes éligibles"}
    "Lyon" {"Vous habitez à Lyon, vous êtes élibles "}
    default {"Vous êtes pas éligibles" }

}
#>


