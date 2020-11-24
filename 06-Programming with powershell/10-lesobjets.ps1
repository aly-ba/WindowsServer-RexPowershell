#Modifier le nom des propriétés en créant un objet à partir d'un objet existant
Get-Service | Select-Object -First 5
Get-Service | Select-Object -First 5 @{name="Etat du service"; expression={$_.Status}}, 
                                     @{name="Nom du service"; expression={$_.Name}},
                                     @{name="Nom d'affichage"; expression={$_.Displayname}}

#Creer un objet personnalisé à partir de rien
$objet = [PSCustomObject]@{

  NomApp = "SuperScript"
  version = "1.2"
  auteur = "Alphorm"
  siteweb = "www.alphorm.com"
}



#Récupérer les propriétés d'un objet personnalisé
$objet.NomApp

#Ajouter une méthode à l'objet
$objet | Add-Member -MemberType ScriptMethod -Name "Ouvre_PowerShell" -Force -Value  {
      
  Start-Process pwsh.exe
}    

$objet.Ouvre_PowerShell()

#Convertir en XML
ConvertTo-Xml -As String -InputObject $objet