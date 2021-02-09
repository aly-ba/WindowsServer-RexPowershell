Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* Importing / Exporting VMs
	+ `Export-VM –Name ITProTV-DC2 –Path C:\Exported`
	+ `Import-VM -Path C:\Exported\ITPROTV-DC2\Virtual Machine\2F87C74EF5C6-4463BE35-7B6464D9E525.XML -Copy`
	+ If there are errors during import
		- `$Report = Compare-VM -Path C:\Exported\ITPROTV-DC2\Virtual Machine\2F87C74EF5C6-4463BE35-7B6464D9E525.XML -copy`
		- `$report.Incompatibilities | Format-Table -AutoSize` 
		