PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.11 PowerShell Profiles
------------------------------------------------------------

* Profiles are stored in 4 places:
	+ **All Users/Shells** - %windir%\system32\Windows­PowerShell\v1.0\profile.ps1
	+ **All Users** - %windir%\system32\Windows­PowerShell\v1.0\Microsoft.Power­Shell_profile.ps1
	+ **Current User/Shells** - %UserProfile%\Documents\Windows­PowerShell\profile.ps1
	+ **Current User** - %UserProfile%\Documents\WindowsPowerShell\Micro­soft.PowerShell_profile.ps1
* Easy way to find your profile:
	+ `$profile`
	+ Will return your "Current User" profile filename and 
	  path
	+ Example: 
		- C:\Users\Don Pezet\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
* If the files do not exist, it means you are using all 
  defaults
* You can manually create/edit the files
* You can also use PowerShell to make the files
	+ Create the file via PowerShell
		- `New-Item -path $profile -type file -force`
	+ Edit the file: 
		- `notepad $profile`
	+ Allow it to execute:
		- `Set-ExecutionPolicy RemoteSigned`
* Example Profile (The one Don actually uses)
```
Set-Alias edit notepad
Set-Location C:\
$console = $host.UI.RawUI  
$console.ForegroundColor = "green"  
$console.BackgroundColor = "black"  
$scrollback = $console.BufferSize  
$scrollback.Height = 3000
$scrollback.Width = 110  
$console.BufferSize = $scrollback  
$MaximumHistoryCount = 150  
$window = $console.WindowSize  
$window.Width = 110  
$window.Height = 35  
$console.WindowSize = $window
function prompt { 
  $currentfolder = Split-Path -leaf -path (Get-Location)
  Write-Host ("PS [" + $currentfolder + "]:") -NoNewline -ForegroundColor Blue
  return " "
}  

Clear-Host
```