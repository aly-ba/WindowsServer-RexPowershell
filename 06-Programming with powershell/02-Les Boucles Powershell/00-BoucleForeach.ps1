
#Parcourir un tableau
$Tableau = "Paris","Marseille","Lyon","Annecy"

foreach($element in $tableau)
{
   Write-Host "Nom de la ville : $($element)"

   if($element -eq "Lyon")
   {
     
      "Vous êtes actuellement à Lyon"
      
   }
}

#Avec une collection d'objet

$serveurs = @{serveur_marseille = "8.8.8.8"; serveur_paris = "172.217.22.142"; serveur_lyon = "10.10.10.10" ; serveur_annecy = "179.60.192.36" }
$Date = (get-date).ToShortDateString()
$heure = (get-date).ToShortTimeString()

Foreach ($element in $serveurs.values) 
{ 
   
   if(test-connection $element -Count 1 -IPv4 -Quiet)
   {
      
      Add-Content -Value "$($element) - $($date) - $($heure)" -Path h:\serveurs_ok.txt
       
   }
   else 
   {
      Add-Content -Value "$($element) - $($date) - $($heure)" -Path h:\serveurs_nok.txt
   }



} 