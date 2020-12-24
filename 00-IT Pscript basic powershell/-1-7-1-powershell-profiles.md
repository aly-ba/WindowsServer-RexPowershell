Filename: techskills-powershell-1-7-1-powershell-profiles  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: PowerShell Profiles  
Description: In this episode, Mike and Cherokee look at  
PowerShell profiles. They explain the different profiles  
that PowerShell uses, and demonstrate creating a profile.  
Keywords: [keyword1,keyword2,keyword3]  

---

### PowerShell Profiles

* Profiles are stored in 4 places:
	- **AllUsersAllHosts**
      - `%windir%\system32\Windows­PowerShell\v1.0\profile.ps1`  
	- **AllUsersCurrentHost**
      - `%windir%\system32\Windows­PowerShell\v1.0
        \Microsoft.Power­Shell_profile.ps1`
	- **CurrentUserAllHosts**
      - `%UserProfile%\Documents\Windows­PowerShell\profile.ps1`
	- **CurrentUserCurrentHost**
      - `%UserProfile%\Documents\WindowsPowerShell
        \Micro­soft.PowerShell_profile.ps1`
  - Microsoft.PowerShell is the host Id, which can change
  - `$PsHome` stores path to all users profiles
  - `$Home` stores path to user specific profiles
* So many profiles...which one to use?
  1. Put truly common things in AllUsersAllHost.
  2. For peculiarities in particular hosts, use AllUsersCurrentHost
  3. Each user manage his/her own preferences and settings
     in user-specific profiles.
* Managing multiple profiles can be tedious
  - Possible to use AllHost and still load different settings
	- `Get-Host` in console and ISE
    ```
    if ($Host.Name -eq 'ConsoleHost')
      {
      }
    elseif ($Host.Name -like '*ISE Host')
      {
      }
    ```
* Easy way to find your profile:
	- `$profile` shows path to CurrentUserCurrentHost
  - Append specific profile name to $profile for others
  - This shows the path, does not check for existence
  - `Test-Path $profile[.<profile name>]`
* You can manually create/edit the files
* You can also use PowerShell to make the files
	+ Create the file via PowerShell
		- `New-Item -type file -path $profile[.<profile name>] -force`
	+ Edit the file:
		- `notepad $profile[.<profile name>]`
	+ Allow it to execute:
		- `Set-ExecutionPolicy RemoteSigned`
* Example Profile (The one Don actually uses)  

```
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
function w {explorer .}

function edit($x) {
    . 'C:\Program Files (x86)\Notepad++\notepad++.exe' $x
}
Clear-Host
```
function prompt { Write-Host ("PS [" + $(get-date) + "] >") -NoNewline -ForegroundColor Cyan
  return " "
}
