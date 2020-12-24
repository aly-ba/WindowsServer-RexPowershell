$Allfile =   get-ChildItem   -Path "C:\Users\aly-b\OneDrive\old\Documents\GitHub\00-IT pScript Powershell\techskills-powershell-scripting" 

$ACouper =  Read-Host -Prompt "Entrer le lien a couper"

$dir= "C:\Users\aly-b\OneDrive\old\Documents\GitHub\00-IT pScript Powershell\techskills-powershell-scripting\"

Write-Host $ACouper

#Write-Host $Allfile

foreach( $monFichier in $Allfile ) {
 
    Write-Host $monFichier 
       
      $NouvauNom= $monFichier -replace "$Acouper",  ""

      $CurrentFile= $dir+$monFichier
       
      Write-Host   $CurrentFile
      Write-Host    $NouvauNom 

      Rename-Item -Path $CurrentFile  -NewName  $NouvauNom
}