PowerShell for System Admins - Introduction to PowerShell
============================================================

1.7 Piping Command Output
------------------------------------------------------------

* Output of one command becomes input for the next
* Referred to as a command pipeline
* Examples
	+ `command-1 | command-2 | command-3`
	+ `Get-Service | Sort-Object -property status | Format-List`
* Creates a new variable called `$_`
* `$_` represents the results of the previous command
* Can be used to run one command multiple times
	+ Needed when command-1 generates multiple results
	  but command-2 only accepts one result at a time
	+ For example, `Get-Process` outputs multiple
	  results and you want to pull details about each
		- `Get-Process | Write-Host $_.name`
			- Fails when executed because Write-Host
			  expects one value
		- `Get-Process | ForEach-Object { Write-Host $_.name }`
			- Executes successfully
