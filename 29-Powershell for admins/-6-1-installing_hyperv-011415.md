Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* These commands are new to PowerShell v3.0
* Prior to 3.0 there were no PowerShell cmdlets for Hyper-V
* Prior to 3.0 you could use the SCVMM modules to control
  Hyper-V if you had SCVMM.
	+ http://technet.microsoft.com/en-us/library/hh848559.aspx
* Installing Hyper-V
  + `Install-WindowsFeature -Name Hyper-V -IncludeManagementTools -Restart`
* Verify Install
  + `Get-Service vmms`
  + `Get-VMHost`
  + `Get-VM`
