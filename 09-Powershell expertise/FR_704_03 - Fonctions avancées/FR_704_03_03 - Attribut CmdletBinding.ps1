
[cmdletbinding]::new()


function Renommer-Fichier {

    [CmdletBinding(SupportsShouldProcess=$true)]
    param ([string]$FichierOrigine,
           [string]$NouveauNom
          )


    if($pscmdlet.ShouldProcess("Le fichier $($FichierOrigine) sera renommé","Cette opération aura pour conséquence de modifier le nom du fichier.","Etes vous sur de vouloir procéder à cette action ?"))
      {
  
         Rename-Item -Path $FichierOrigine -NewName $NouveauNom
  
      
      }

  }


Renommer-Fichier -FichierOrigine H:\classeur.xlsx -NouveauNom test.xlsx -WhatIf


Renommer-Fichier -FichierOrigine H:\classeur.xlsx -NouveauNom test.xlsx 


Renommer-Fichier -FichierOrigine H:\classeur.xlsx -NouveauNom test.xlsx -Confirm


function Test-ConfirmImpact {

  [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact="High")]
  param ([string]$FichierOrigine,
         [string]$NouveauNom
        )


  if($pscmdlet.ShouldProcess("Le fichier $($FichierOrigine) sera renommé","Cette opération aura pour conséquence de modifier le nom du fichier.","Etes vous sur de vouloir procéder à cette action ?"))
    {

       Rename-Item -Path $FichierOrigine -NewName $NouveauNom

    
    }

}

Test-ConfirmImpact -FichierOrigine H:\classeur.xlsx -NouveauNom test.xlsx



function Test-HelpOnline {

  [CmdletBinding(HelpUri="https://www.cloudhorizon.fr")]
  param()

}

get-help Test-HelpOnline -Online

