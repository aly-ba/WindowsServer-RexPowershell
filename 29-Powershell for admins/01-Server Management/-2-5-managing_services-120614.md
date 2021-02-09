PowerShell for System Admins - 2.0 Server Management
============================================================

2.5 Managing Services
------------------------------------------------------------

* List Services
  + `Get-Service`
  + `Get-Service -Name browser`
  + `Get-Service -DisplayName Computer Browser`
  + Filter by status running status
    - `Get-Service | Sort-Object Status`
    - `get-service | where-object {$_.Status -eq "Running"}`
* Stop/Restart/Start Services
  + `Start-Service Browser`
  + `Stop-Service Browser`
  + `Restart-Service Browser`
* Change Startup Type
  + `Set-Service Browser -StartupType <Manual/Automatic/Disabled>`
* Change credentials for a service
  + No direct cmdlet
  + Can use WMI or CIM
  + Modify the logon account
    - `Invoke-CimMethod -Name Change -Arguments @{StartName="SERVER01\dpezet";StartPassword="Passw0rd!"} -Query "Select * from Win32_Service where name='browser'"`
  + Verify the Change
    - `Get-WmiObject win32_service | Format-Table name,startname`
* Change recovery options
  + Restart on failure attempts
  + Unfortunately, there is no good way to do this with
    native PowerShell cmdlets
  + Must use "sc.exe"
  + Example:
    - `sc.exe failure Browser reset= 86400 actions= restart/6000/reboot/30000`
    - Failure counter resets every 24 hours (86,400 seconds)
    - Restart the service 1 minute after it fails (6,000 miliseconds)
    - Reboot the server 5 minutes after it fails (30,000 miliseconds)
