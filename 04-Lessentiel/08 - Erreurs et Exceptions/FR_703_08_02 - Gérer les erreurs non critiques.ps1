#Connaitre la valeur de erroractionpreference 
$ErrorActionPreference

#Par d�faut c'est continue
Get-Item d:\nonexiste
get-date


#Le pr�ciser avec erroraction
Get-Item d:\nonexiste -ErrorAction continue
Get-Date

