
[Parameter]::new()


function Get-FileInfo
{
  [CmdletBinding()] 
  Param(
        

        [Parameter(Mandatory=$true)]
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

Get-FileInfo




function Get-FileInfo
{
  [CmdletBinding()] 
  Param(
        
        [Parameter(Mandatory=$true, ValueFromPipeline = $true)]
        [string]$CheminFichier,

        [switch]$TailleFichier
       )

  Begin
  {} 
  
  Process
  {
 
      if($TailleFichier)
  
      {
          "La taille du fichier $($_) est de $((Get-Item -Path $CheminFichier).Length) octets"
      }      
      
  } 
  End{}

  
 
}


Get-FileInfo -CheminFichier "H:\classeur.xlsx", "H:\Doc1.docx"


"H:\classeur.xlsx", "H:\Doc1.docx", "H:\Doc3.docx" | Get-FileInfo -TailleFichier



function Get-FileInfo
{
  [CmdletBinding()] 
  Param(
        
        [Parameter(ValueFromPipeline = $true)]

        [string]$CheminFichier,

        [switch]$TailleFichier
       )

  Begin
  {} 
  
  Process
  {
 
      if($_)
  
      {
          "Vous êtes passé à travers le pipeline"
      }      
      else
      {
          "Vous n'êtes pas passé à travers le pipeline"
      }
      
  } 
  End{}

  
 
}


Get-FileInfo -CheminFichier "h:\test"


"h:\test" | Get-FileInfo 



function Test-Position
{
  [CmdletBinding()] 
  Param(
   
        [Parameter(Position = 2)]
        [string]$Nom,

        [Parameter(Position = 3)]
        [string]$Prenom,

        [Parameter(Position = 1)]
        [string]$Age
       )

  Begin
  {
  
  } 
  Process
  {

     if($Prenom)
     {
       "Le prenom est $($prenom)"
     }

     if($Nom)
     {
       "Le Nom est $($nom)"
     }

     if($age)
     {
       "L'age est $($age)"
     }


      
  } 
  End
  {

      
  } 
 
}


Test-Position -Nom "DUBOIS" -prenom "Jean" -age 21

Test-Position "DUBOIS" "25" "Jean"