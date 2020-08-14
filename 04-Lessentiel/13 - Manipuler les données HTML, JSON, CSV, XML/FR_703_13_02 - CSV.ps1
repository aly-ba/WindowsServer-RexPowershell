#Convertir au format Csv
Get-Service | Select-Object name, DisplayName, status | ConvertTo-Csv -Delimiter ";"

#Exporter au format Csv
Get-Service | Select-Object name, DisplayName, status | Export-Csv -Path h:\services.csv -Delimiter ";" 

#Importer un fichier Csv
$csv = Import-Csv -Path h:\services.csv -Delimiter ";"

foreach($element in $csv)
{

  "L'état du service $($element.name) est : $($element.status)"

}

#Importer un fichier d'employés
$employes = Import-Csv h:\employes.csv -Delimiter ";"


#Parcourir le fichier
foreach($element in $employes)
{
  

  if($element.etat_compte -eq "actif")
    {  
       
      #Calculer l'ancienneté`
      $DateDuJour = (get-date).ToShortDateString()
      $DateEmbauche = $element.date_embauche
      $Diff = New-TimeSpan -Start $DateEmbauche -End $DateDuJour
      $NombreAnnee = [math]::round($Diff.Days / 365)
   
      "Le compte de {0} {1} est actif. Elle/Il est embauché(e) depuis le {2} et elle/il est en {3}. Elle/Il a une ancienneté(e) de {4} ans" -f 
       $element.prenom, 
       $element.nom,
       $element.date_embauche, 
       $element.type_contrat,
       $NombreAnnee
      
    }
  elseif($element.etat_compte -eq "inactif")

    {

      "Le compte de {0} {1} est inactif. Il sera supprimé dans 30 jours." -f $element.prenom, $element.nom
    
    }
  
}
