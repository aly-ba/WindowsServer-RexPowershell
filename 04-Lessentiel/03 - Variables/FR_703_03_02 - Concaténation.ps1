#concatener
$Prenom = "Marie"

Write-Host "Bonjour $Prenom"


#Concaténer en récupérant une propriété
Write-Host "La variable Prenom contient $($Prenom.Length) caractères"


#En récupérant une entrée utilisateur 
$Age = Read-Host
Write-Host "Vous avez $age ans"

#avec apostrosphe
Write-Host 'Marc Aurèle disait : "Si tu es bloqué sur le chemin, alors tu es sur le bon chemin" '
