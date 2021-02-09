PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.12 Extending the PowerShell with additional commandlets
------------------------------------------------------------

* PowerShell can be extended using official and unofficial
  modules
* Adding Modules
	+ Typically installing the management tools for 
	  an appropriate product will add their PowerShell 
	  modules
	+ To manually add individual modules
		- Import-Module <module name>
		- `Import-Module Microsoft.Exchange.Management.PowerShell.E2010`
		- `Import-Module “sqlps” -DisableNameChecking`
	+ To add all available modules
		- `Get-Module -ListAvailable | Import-Module`
	+ Modules are stored in:
		- %UserProfile%\Documents\WindowsPowerShell\Modules
		- %WinDir%\System32\WindowsPowerShell\v1.0\Modules
	+ To add modules from another directory:
		- ```$p = [Environment]::GetEnvironmentVariable("PSModulePath")  
		  $p += ";C:\Path\to\module"  
		  [Environment]::SetEnvironmentVariable("PSModulePath",$p)
		  ```
	+ `Import-PSSession` can be used to load the modules
	  from a remote system without installing them
	  locally (Uses Remote PowerShell)
	  	- `$s = New-PSSession -ComputerName Server01`
	  	- `Import-PSSession -Session $s`
	+ Better options are available (See the Remote 
	  Management segment)

