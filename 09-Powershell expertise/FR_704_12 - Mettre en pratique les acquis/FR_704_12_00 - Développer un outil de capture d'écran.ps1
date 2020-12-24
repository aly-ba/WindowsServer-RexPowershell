function New-Capture
{
  [CmdletBinding()]

  [parameter(Mandatory = $true)]
  param([string]$Chemin)

  begin
  {
    Add-Type -AssemblyName System.Windows.Forms
    Add-type -AssemblyName System.Drawing
    $Ecran = [System.Windows.Forms.SystemInformation]::VirtualScreen
    $Largeur = $Ecran.Width
    $Hauteur = $Ecran.Height
    $Gauche = $Ecran.Left
    $Haut = $Ecran.Top

    $Image = New-Object System.Drawing.Bitmap $Largeur, $Hauteur


    $ObjetGraph = [System.Drawing.Graphics]::FromImage($Image)
  }

  process
  {

    $ObjetGraph.CopyFromScreen($Gauche, $Haut, 0, 0, $Image.Size)
    $Image.Save($Chemin)
  }

  end
  {
   
    "La capture d'écran a été enregistrée à cet emplacement : $($Chemin)"

  }

}


New-Capture -Chemin h:\test.bmp

#Sous forme de classe

Add-Type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing

class Capture 
{
   
static [string]FaireCapture([string]$Chemin)
      {
        $Ecran = [System.Windows.Forms.SystemInformation]::VirtualScreen
        $Largeur = $Ecran.Width
        $Hauteur = $Ecran.Height
        $Gauche = $Ecran.Left
        $Haut = $Ecran.Top
        $Image = New-Object System.Drawing.Bitmap $Largeur, $Hauteur 
        $ObjetGraph = [System.Drawing.Graphics]::FromImage($Image)
        $ObjetGraph.CopyFromScreen($Gauche, $Haut, 0, 0, $Image.Size)
        $Image.Save($Chemin)
    
        return "La capture d'écran a été enregistrée à cet emplacement : $($Chemin)"
      }

}

[Capture]::FaireCapture("h:\test.bmp")

