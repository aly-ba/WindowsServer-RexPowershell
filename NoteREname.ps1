$wkdir= Read-Host "Entrer le working dir"

$Allfile =   get-ChildItem   -Path $wkdir

$ACouper =  Read-Host -Prompt "Entrer le lien a couper"

$Mydir= $wkdir

Write-Host $ACouper

#Write-Host $Allfile

foreach( $monFichier in $Allfile ) {
 
    Write-Host $monFichier 
       
      $NouvauNom= $monFichier -replace "$Acouper",  ""

      $CurrentFile= $Mydir+$monFichier
       
      Write-Host   $CurrentFile
      Write-Host    $NouvauNom 

     Rename-Item -Path $CurrentFile  -NewName  $NouvauNom
}