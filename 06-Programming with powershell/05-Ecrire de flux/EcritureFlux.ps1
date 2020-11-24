#Importer un format JSON
$uri = "https://api.exchangeratesapi.io/latest"
$cours = (Invoke-WebRequest -Uri $URI).content | ConvertFrom-Json 

#récupérer la base
$cours.base

#récupérer tous les taux
#$cours.rates 

Write-Host $cours.rates.keys

#récupérer un taux
#$cours.rates.USD

#Tester la validité d'un format JSON 
#Test-Json -Json $cours