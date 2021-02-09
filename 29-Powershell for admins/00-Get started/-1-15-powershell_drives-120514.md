PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.15 PowerShell Drives
------------------------------------------------------------

* PowerShell Drives are virtual drive mappings that point to
  locations
* Locations do not have to be file based
* Examples: 
	+ Disk Volumes
		- C: (C:\\)
		- E: (E:\\)
	+ Folders
		- dpezet: (C:\Users\Don Pezet)
		- win32: (C:\Windows\System32)
	+ Registry Keys
		- HKLM: (HKEY\_LOCAL\_MACHINE)
		- HKCU: (HKEY\_CURRENT\_USER)
	+ Miscellaneous
		- cert: (Certificate Store)
		- alias: (PowerShell Aliases)
		- function: (PowerShell functions)
		- variable: (PowerShell Variables)
		- env: (PowerShell Environment)
* Listing available PSDrives
	+ `Get-PSDrive`
	+ `Get-PSDrive -PSProvider FileSystem`
* Accessing a PSDrive
	+ `Set-Location HKLM:\SOFTWARE`
* Creating a PSDrive
	1. Make sure the provider is supported  
	  `Get-PSProvider`
	2. Create the mapping  
	  `New-PSDrive -Name docs -PSProvider FileSystem -Root "C:\Users\Don Pezet\Documents"`  
	  `New-PSDrive -Name winlogon -PSProvider Registry -Root HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon`
* Removing a PSDrive
	+ Cannot be deleted while you are still in it
	+ Use `Set-Location` to exit the drive
	+ Then, `Remove-PSDrive -Name <name>`