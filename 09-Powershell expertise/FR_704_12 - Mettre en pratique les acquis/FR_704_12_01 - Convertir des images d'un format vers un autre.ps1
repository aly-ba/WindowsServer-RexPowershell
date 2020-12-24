function Convertir-Image
{
   [CmdletBinding()]
   param(
       [parameter(Mandatory = $true)]
       [string]$ImageAConvertir, 
       
       [parameter(Mandatory = $true)]
       [string]$Format,

       [parameter(Mandatory = $true)]
       [string]$Emplacement
       
       )

  begin
  {
   
    Add-Type -AssemblyName system.drawing
    $FormatImage = "System.Drawing.Imaging.ImageFormat" -as [type]


  } 
  process
  {

    $image = [drawing.image]::FromFile($ImageAConvertir)
    $image.Save($Emplacement, $FormatImage::$Format)

  }

  end
  {
    "L'image a été converti au format $($format)"
  }


}

Convertir-Image -ImageAConvertir H:\Capture001.png -Format jpeg -Emplacement h:\image.jpeg

#Formats pris en charge : https://docs.microsoft.com/fr-fr/dotnet/api/system.drawing.imaging.imageformat?view=dotnet-plat-ext-3.1


#Sous forme de classe

Add-Type -AssemblyName system.drawing

class ConvertirImage
{


static [string]FaireConversion([string]$ImageAConvertir, [string]$Format, [string]$Emplacement)

      {
        Add-Type -AssemblyName system.drawing
        $FormatImage = "System.Drawing.Imaging.ImageFormat" -as [type]    
        $image = [drawing.image]::FromFile($ImageAConvertir)
        $image.Save($Emplacement, $FormatImage::$Format)

        return  "L'image a été converti au format $($format)"
      }
}

[ConvertirImage]::FaireConversion("H:\Capture001.png","jpeg","H:\image.jpeg")