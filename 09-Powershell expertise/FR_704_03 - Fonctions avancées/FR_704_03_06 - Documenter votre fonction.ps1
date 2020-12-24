function  Get-FileInfo
{

<#

.SYNOPSIS
  Description courte de la fonction

.DESCRIPTION
 Description complète sur la fonction

.EXAMPLE
 Get-FileInfo -CheminFichier c:\windows\write.exe -DateCreation -TailleFichier

.LINK
 Retrouvez plus d'informations sur www.cloudhorizon.fr


#>


  [CmdletBinding()] 
  Param(
        [string]$CheminFichier,
        [switch]$DateCreation,
        [switch]$TailleFichier
        
        )

}

Get-Help  Get-FileInfo


Get-Help  Get-FileInfo -Examples

#Tous les mots clés : https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-7