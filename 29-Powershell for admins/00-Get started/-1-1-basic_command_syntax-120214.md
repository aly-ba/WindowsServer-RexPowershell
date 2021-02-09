PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.1 Basic Command Syntax
------------------------------------------------------------

* PowerShell is made up of "Cmdlets"
* Command Structure
	+ Verb-Noun (`Get-Command`)
	+ Expression (`12 / 2` or `8GB + 1024KB`)
	+ Executed in a script (`.\don-script.ps1`)
		- Or Right-Click and "Run with PowerShell" in 
		  explorer
	+ Commands can be very long and wrap the screen
	+ Use "`" to move to an additional line without
	  executing
* Finding Commands
	+ Use wild-cards
	+ `Get-Command -Name *dns*`
