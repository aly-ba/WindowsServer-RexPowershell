class Systeme
{
  [String]$NomPC = [System.Environment]::MachineName
  
hidden [int]$NombreDisque = (get-disk).length
  
  [int]$RamTotal = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
  
  [int]$RamDisponible = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB
  
  [string]$ModeleProcesseur = (Get-CimInstance Win32_Processor).Name

  [string]$TypeSocket = (Get-CimInstance Win32_Processor).SocketDesignation

  [int]$NombreCoeur = (Get-CimInstance Win32_Processor).NumberOfCores



hidden [void]OuvreCarteReseau()

    {
        ncpa.cpl
    }

 [void]RenommeFichier([string]$FichierOrigine, [string]$NouveauNom)
 {    
      
     Rename-Item -Path $FichierOrigine -NewName $NouveauNom

 }


}



[Systeme]::new()


[Systeme]::new() | get-member


[Systeme]::new() | get-member -Force


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.OuvreCarteReseau()
