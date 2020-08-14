function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le flux de sortie standard"

}

#sans redirection
ecrire-flux

#avec redirection du flux standard
ecrire-flux 1> test.txt

