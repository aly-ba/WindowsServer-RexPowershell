function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"
  Write-Warning "Il s'agit d'un message dans le flux d'avertissement"
  Write-Verbose "Il s'agit d'un commentaire dans le flux verbeux"
  Write-Debug "Il s'agit d'un message de débogage"

}

#Activer debug
$DebugPreference = "continue"

#sans redirection
ecrire-flux

#avec redirection du flux de débogage
ecrire-flux 5>> test.txt

