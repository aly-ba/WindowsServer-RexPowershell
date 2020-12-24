PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.8 Formatting Command Output
------------------------------------------------------------

* Formating
	+ Format-List
		- Displays each property/value in a vertical list
	+ Format-Table
		- Displays each property as a column in a table
	+ Format-Wide
		- Displays additional columns in a wide format
	+ Get-Member
		- Lists the available properties returned for a
		  command
		- `Get-Service | Get-Member`
	+ Examples
		- `Get-Service`
		- `Get-Service | Format-List`
		- `Get-Service | Format-Table name, Servicetype, Canshutdown`
* Exporting
	+ ConvertTo-HTML
		- `Get-Service | ConvertTo-HTML -Property Name, Status > C:\services.html`
	+ Export-CSV
		- `Get-Service | Export-CSV c:\services.csv`
* Select-Object
	+ Filters which properties will be returned for each 
	  object
	+ `Get-Process | Select-Object -Property ProcessName, Id`
* Where-Object
	+ Filters which objects will be returned
	+ `Get-Process | Where-Object {$_.Name –eq “iexplore”}`
	+ `$_` indicates an object returned from the first 
	  command

