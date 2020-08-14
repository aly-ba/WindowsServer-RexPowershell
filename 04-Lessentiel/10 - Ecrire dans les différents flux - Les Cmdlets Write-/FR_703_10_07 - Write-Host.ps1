function ecrire-flux
{
   
  Write-Output "Il s'agit d'un message dans le canal standard"
  Write-Error "Il s'agit d'un message dans le flux d'erreur"
  Write-Warning "Il s'agit d'un message dans le flux d'avertissement"
  Write-Verbose "Il s'agit d'un commentaire dans le flux verbeux"
  Write-Debug "Il s'agit d'un message de débogage"
  Write-Information "Il s'agit d'un message d'information" -InformationAction Continue
  write-host "Coucou, c'est write-host"

}

#sans redirection
ecrire-flux

#Write-Host
write-host "Coucou, c'est write-host" -ForegroundColor Yellow -BackgroundColor red -Separator " " 

#avec redirection de tous les flux 
ecrire-flux *>> test.txt

#différence avec write-output
write-host "Coucou" | get-member

Write-Output "Coucou" | get-member


#write-host ne sort pas le flux standard
write-host "Sortie via Write-Host " 1>>.\test.txt
