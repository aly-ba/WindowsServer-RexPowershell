function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"

}

#sans redirection
ecrire-flux

#avec redirection du flux d'erreur
ecrire-flux 2>> test.txt

