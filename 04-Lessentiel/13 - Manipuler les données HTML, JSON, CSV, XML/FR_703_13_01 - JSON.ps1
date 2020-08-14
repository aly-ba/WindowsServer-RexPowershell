#Convertir au format JSON
Get-Service | Select-Object name, DisplayName | ConvertTo-Json

#Convertir au format JSON en compactant le code json et en supprimant les espaces, saut de ligne etc...
Get-Service | Select-Object name, DisplayName | ConvertTo-Json -Compress

#Convertir au format JSON dans un fichier json
Get-Service | Select-Object name, DisplayName | ConvertTo-Json | Out-File h:\test.json

#Importer un format JSON
$uri = "https://api.exchangeratesapi.io/latest"
$cours = (Invoke-WebRequest -Uri $URI).content | ConvertFrom-Json 

#récupérer la base
$cours.base

#récupérer tous les taux
$cours.rates

#récupérer un taux
$cours.rates.USD

#Tester la validité d'un format JSON
Test-Json -Json $cours