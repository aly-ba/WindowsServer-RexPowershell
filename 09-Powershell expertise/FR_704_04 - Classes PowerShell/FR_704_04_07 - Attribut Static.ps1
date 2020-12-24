class Systeme
{
  static [String]$NomPC = [System.Environment]::MachineName
  
  static [int]$NombreDisque = (get-disk).length
  
  static [int]$RamTotal = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
  
  static [int]$RamDisponible = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB
  
  static [string]$ModeleProcesseur = (Get-CimInstance Win32_Processor).Name

  static [string]$TypeSocket = (Get-CimInstance Win32_Processor).SocketDesignation

  static [int]$NombreCoeur = (Get-CimInstance Win32_Processor).NumberOfCores



 static [void]OuvreCarteReseau()

    {
        ncpa.cpl
    }

static [void]RenommeFichier([string]$FichierOrigine, [string]$NouveauNom)
 {    
      
     Rename-Item -Path $FichierOrigine -NewName $NouveauNom

 }


static [string]TestFichier([string]$NomFichier)
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


}


[Systeme] | Get-Member -Static


[Systeme]::ModeleProcesseur


[Systeme]::OuvreCarteReseau()