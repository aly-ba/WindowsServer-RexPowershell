#Générer du code HTML en mémoire
Get-Service | ConvertTo-Html

#Générer du code HTML en créant un fichier html par défaut
Get-Service | ConvertTo-Html | Out-File h:\services.html

#Générer du code HTML en créant un fichier html en spécifiant les propriétés à afficher
Get-Service | ConvertTo-Html -Property Name, displayname, status, starttype | Out-File h:\services.html


#Générer du code HTML en créant un fichier html en modifiant le titre
Get-Service | ConvertTo-Html -Property Name, displayname, status, starttype -Title "Etat des services Windows" | Out-File h:\services.html


#Générer du code HTML en créant un fichier html en modifiant le CSS
$CSS = @" 
  <style>

  table {
    text-align:center;
    border-collapse: collapse;
  }

  table, th, td {
    border: 1px solid black;
  } 

  TH {
    background-color: #6495ED;

  }

  h3{

    text-align:center;
  }

  </style>

"@
Get-Service | ConvertTo-Html -Property Name, displayname, status, starttype -Title "Etat des services Windows" -Head $css| Out-File h:\services.html



#Générer du code HTML en créant un fichier html en modifiant le body

$Body = @" 
  

<h3>Rapport sur les services Windows<h3>

"@

Get-Service | ConvertTo-Html -Property Name, displayname, status, starttype -Title "Etat des services Windows" -Head $css -Body $body| Out-File h:\services.html



#Générer du code HTML en créant un fichier html en rajouant une condition pour la couleur

$Body = @" 
  
<h3>Rapport sur les services Windows<h3>

"@

Get-Service | ConvertTo-Html -Property Name, displayname, status, starttype -Title "Etat des services Windows" -Head $css -Body $body | ForEach-Object {   

if ($_ -match "<td>Running</td>")
{
  
   $_ -replace "<td>Running</td>", "<td bgcolor='green'>En cours</td>"

}

elseif($_ -match "<td>Stopped</td>")
{
  $_ -replace "<td>Stopped</td>", "<td bgcolor='red'>Arrêté</td>"

}

else {
  $_
}

} | Out-File h:\services.html
