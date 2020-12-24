Filename: techskills-powershell-1-6-1-powershell-drives  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: PowerShell Drives  
Description: In this episode, Mike and Cherokee discuss  
PowerShell drives. They look at the different PSProviders for  
creating drives, and demonstrate adding a drive.  
Keywords: [keyword1,keyword2,keyword3]  

---

### PowerShell Drives

* PowerShell drive is a data store location that you can  
  access like a file system drive
* Locations do not have to be file based
* PowerShell creates some by default
  - `Get-PSDrive`
	- `Get-PSDrive -PSProvider FileSystem`
* Accessing a PSDrive
	- `Set-Location HKLM:`
  - `cd Env:`
  - `Get-Alias -Definition Set-Location`
* Creating a PSDrive
	1. Make sure the provider is supported
	  `Get-PSProvider`
	2. Create the mapping
	  `New-PSDrive -Name scripts -PSProvider FileSystem -Root "C:\Scripts"`
	  `New-PSDrive -Name cvkey -PSProvider Registry -Root HKLM\Software\Microsoft\Windows\CurrentVersion`
* PSDrives are not persistent, only for session
  - Add to profile to make persistent
* Removing a PSDrive
	+ Cannot be deleted while you are still in it
	+ Use `Set-Location` to exit the drive
	+ Then, `Remove-PSDrive -Name <name>`
