function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"
  Write-Warning "Il s'agit d'un message dans le flux d'avertissement"

}

#Sans redirection
ecrire-flux

#Avec redirection du flux d'avertissement
ecrire-flux 3>> test.txt

