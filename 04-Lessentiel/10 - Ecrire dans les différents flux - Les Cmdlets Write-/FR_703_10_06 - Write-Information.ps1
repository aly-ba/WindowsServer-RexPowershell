function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"
  Write-Warning "Il s'agit d'un message dans le flux d'avertissement"
  Write-Verbose "Il s'agit d'un commentaire dans le flux verbeux"
  Write-Debug "Il s'agit d'un message de débogage"
  Write-Information "Il s'agit d'un message dans le flux d'information"

}

#Activer 
$InformationPreference = "continue"

#sans redirection
ecrire-flux

#avec redirection du flux 

ecrire-flux 6>> test.txt
