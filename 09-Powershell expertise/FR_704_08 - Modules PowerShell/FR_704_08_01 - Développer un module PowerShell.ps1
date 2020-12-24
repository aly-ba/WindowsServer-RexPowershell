function Recupere-ExtensionFichier
{
  [CmdletBinding()] 
  Param(
    [parameter(Mandatory = $true)]
    [string]$Fichier
    )

  Begin
  {
    $Extension = [System.IO.Path]::GetExtension($Fichier)
      
  } 
  Process
  {

    "Le fichier $($fichier) porte l'extension $($extension)"
      
  } 
  End
  {
    
  } 
 
}

Recupere-ExtensionFichier -Fichier H:\test.txt




function Nouveau-FichierTemporaire
{
  [CmdletBinding()] 
  Param()

  Begin
  {
   
      
  } 
  Process
  {

    $FichierTemporaire = [System.IO.Path]::GetTempFileName()
      
  } 
  End
  {
    "Le fichier temporaire $($FichierTemporaire) a été créé"
    
  } 
 
}

Nouveau-FichierTemporaire

function Test-Extension
{
  [CmdletBinding()] 
  Param(
      [parameter(Mandatory = $true)]
      [string]$Fichier
 
    )

  Begin
  {
    $Fichier_Test = [System.IO.Path]::HasExtension($Fichier)
      
  } 
  Process
  {

    if($Fichier_Test -eq $true)
    {
       "Le fichier $($fichier) porte une extension"
    }
    else
    {
        "Le fichier $($fichier) ne porte pas d'extension"
    }
      
  } 
  End
  {
    
  } 
 
}

Test-Extension -Fichier H:\test


