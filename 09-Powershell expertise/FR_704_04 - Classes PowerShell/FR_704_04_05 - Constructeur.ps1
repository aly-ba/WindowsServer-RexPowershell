class Systeme
{
  [string]$DateDemarrage = (Get-Date).ToShortDateString()

  $version = 0
  
  

   Systeme()
   {
       $this.version = "1.0.1"
       Write-Host "Construction de l'objet Système le $($this.datedemarrage)"
   }



}


[Systeme]::new()
