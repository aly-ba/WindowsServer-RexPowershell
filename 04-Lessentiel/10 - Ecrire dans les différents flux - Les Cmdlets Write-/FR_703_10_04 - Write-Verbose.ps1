function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"
  Write-Warning "Il s'agit d'un message dans le flux d'avertissement"
  Write-Verbose "Il s'agit d'un commentaire dans le flux verbeux"

}


#activer verbose
$VerbosePreference = "continue"

#sans redirection
ecrire-flux

#avec redirection du flux
ecrire-flux 4>> test.txt
