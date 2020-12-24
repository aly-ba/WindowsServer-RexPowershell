PowerShell for System Admins - Introduction to PowerShell
============================================================

1.6 Help Commands
------------------------------------------------------------

* Get-Help
* `Get-Help <command>`
* `Get-Help <command> | more`
* `Get-Help *dns*`
* Tab Auto-Complete
* Updating Help Files
	+ `Update-Help`
	+ May prompt to run when pulling help for some commands
* Deciphering Get-Help output
	+ `[ ]` indicates a *Parameter*
	+ `< >` indicates a *DataType* to be provided
	+ Optional Parameters
		- The two are grouped together
		- `[-Name <string>]`
		- `[[-Name] <string>]`
	+ Required Parameters
		- The two are separate
		- `[-Name] <string>`
* Extended Information
	+ `Get-Help Set-Location`
		- Displays the basic syntax for a command
	+ `Get-Help Set-Location -Full`
		- Displays everything available
	+ `Get-Help Set-Location -Detailed`
		- Adds examples and descriptions to default view
	+ `Get-Help Set-Location -Examples`
		- Displays example syntax for the command
* Readability
	+ `-ShowWindow`
* Help Alias
	+ `help` is an alias of `Get-Help` with the `| more`
	  added automatically
