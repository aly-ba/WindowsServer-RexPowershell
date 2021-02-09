PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.10 Customizing the interface
------------------------------------------------------------

* Most easily customized via the GUI
	+ Right-click on title bar and choose "Properties"
* Can also be done via a script
* A script allows you to easily recreate your settings on
  new systems
* Example:
	+ ```$console = $host.UI.RawUI  
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
	function prompt { Write-Host ("PS [" + $(get-date) + "] >") -NoNewline -ForegroundColor Cyan  
	  return " "  
	}  
    ```
* Save the script into your PowerShell profile so it is
  executed every time
* Customizing the prompt
	+ Default Prompt
		- "PS C:\Windows\System32>"
	+ Can be customized
		- ```function prompt  
		{  
		Write-Host ("PS [" + $(get-date) +"] >") -nonewline -foregroundcolor Cyan  
		return " "  
		}
		```
