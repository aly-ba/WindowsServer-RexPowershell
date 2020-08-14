#Export au format XML
Get-Service | Select-Object name, DisplayName, status | Export-Clixml -Path h:\services.xml

#Importer uniquement les ficheirs xml exportés avec export-clixml
$xml = Import-Clixml -Path h:\services.xml
$xml.name

#Importer un contenu XML non exporter avec export-clixml
$formateurs = [XML](get-content formateurs.xml)

#Récupérer la liste des formateurs
$formateurs.Alphorm.Formateur

#Récupérer un seul formateur
$formateurs.Alphorm.Formateur

#Convertir un tableau associatif en XML
$serveurs = @{serveur_marseille = "192.168.10.100"; serveur_paris = "172.16.10.10"; serveur_lyon = "10.10.10.10" }
ConvertTo-Xml -As String -InputObject $serveurs

