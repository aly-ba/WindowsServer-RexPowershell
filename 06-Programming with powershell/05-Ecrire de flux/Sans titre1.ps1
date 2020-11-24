function ecrire-flux
{
    Write-Output "Il s'agit d'un message dans le flux de sorite standard"
}

#sans redirection 
ecrire-flux

#avec redirection du flux standard
ecrire-flux 1 > text.txt

