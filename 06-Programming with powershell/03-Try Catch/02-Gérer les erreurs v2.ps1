#Connaitre la valeur de erroractionpreference 
$ErrorActionPreference

#Par défaut c'est continue
Get-Item d:\nonexiste
get-date


#Le préciser avec erroraction
Get-Item d:\nonexiste -ErrorAction continue
Get-Date
