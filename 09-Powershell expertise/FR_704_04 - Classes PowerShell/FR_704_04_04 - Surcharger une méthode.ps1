class Systeme
{
  [String]$NomPC = [System.Environment]::MachineName
  
  [int]$NombreDisque = (get-disk).length
  
  [int]$RamTotal = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
  
  [int]$RamDisponible = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB
  
  [string]$ModeleProcesseur = (Get-CimInstance Win32_Processor).Name

  [string]$TypeSocket = (Get-CimInstance Win32_Processor).SocketDesignation

  [int]$NombreCoeur = (Get-CimInstance Win32_Processor).NumberOfCores

  [string]Bonjour()
  {
      return "Bonjour tout le monde !"
  }

  [string]Bonjour([string]$Prenom)
  {
      return "Bonjour $($Prenom)"
  }




}


[Systeme]::new()


[Systeme]::new() | get-member


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.Bonjour()


$MonObjetSysteme = [Systeme]::new()
$MonObjetSysteme.Bonjour("Jean")