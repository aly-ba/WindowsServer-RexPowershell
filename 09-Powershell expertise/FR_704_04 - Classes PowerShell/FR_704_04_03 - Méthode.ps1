class Systeme
{
  [String]$NomPC = [System.Environment]::MachineName
  
  [int]$NombreDisque = (get-disk).length
  
  [int]$RamTotal = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
  
  [int]$RamDisponible = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB
  
  [string]$ModeleProcesseur = (Get-CimInstance Win32_Processor).Name

  [string]$TypeSocket = (Get-CimInstance Win32_Processor).SocketDesignation

  [int]$NombreCoeur = (Get-CimInstance Win32_Processor).NumberOfCores


 [void]OuvreCarteReseau()

    {
        ncpa.cpl
    }

 [void]RenommeFichier([string]$FichierOrigine, [string]$NouveauNom)
 {    
      
     Rename-Item -Path $FichierOrigine -NewName $NouveauNom

 }

[string]TestFichier([string]$NomFichier)
{

     if(test-path -Path $NomFichier)
      {
        return "Le fichier existe"
      }
      else
      {
       return "Le fichier n'existe pas"
          
      }

}


 [int]GetTotalRam()
 {
     return $this.ramtotal
 }


}


[Systeme]::new()


[Systeme]::new() | get-member


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.OuvreCarteReseau()


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.RenommeFichier("H:\classeur.xlsx","h:\test.xlsx")


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.GetTotalRam()


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.TestFichier("C:\windows\wrte.exe")
