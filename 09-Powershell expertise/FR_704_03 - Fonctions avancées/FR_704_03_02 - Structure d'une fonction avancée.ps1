function Get-FileInfo
{
  [CmdletBinding()] 
  Param(
        [string]$CheminFichier,
        [switch]$DateCreation,
        [switch]$TailleFichier
       )

  Begin
  {
  
   $DebutTraitement = (Get-Date -Format HH:mm:ss)
  
  } 
  Process
  {

      if($DateCreation)
      {
       
          "Le fichier a été créé le $((Get-Item -Path $CheminFichier).CreationTime.ToShortDateString() )"

      }
  
      if($TailleFichier)
  
      {
          "La taille du fichier est de $((Get-Item -Path $CheminFichier).Length) octets"
      }      
      
  } 
  End
  {
    

    Start-Sleep -Seconds 3

    $FinTraitement = (Get-Date -Format HH:mm:ss)

    Write-Host "Le traitement a débuté à $($DebutTraitement) et s'est terminé à $($FinTraitement) "
      
  } 
 
}

Get-FileInfo -CheminFichier C:\windows\write.exe -DateCreation -TailleFichier