PowerShell for System Admins - 2.0 Server Management
============================================================

2.1 Add/Remove Roles and Features
------------------------------------------------------------

+ Role and Feature management is provided by the Server
  Manager PowerShell module
+ The module is installed by default, but not loaded
+ NOTE: The PowerShell cmdlets refer to Roles, Features and
  Role Services as "Features"
+ To add a Role/Feature:
	1. Launch PowerShell as an Administrator
	2. Load the Server Manager module  
	`Import-Module Servermanager`
	3. Query the current status of the role/feature  
	`Get-WindowsFeature`  
	`Get-WindowsFeature -Name <name>`  
	`Get-WindowsFeature | Where-Object { $_.InstallState -EQ "Installed"}`  
	`Get-WindowsFeature | Where Installed`  
	`Get-WindowsFeature | Where InstallState -NE Installed`
	4. Install the role/feature  
	`Add-WindowsFeature <name>`  
	`Add-WindowsFeature Telnet-Client`  
	`Add-WindowsFeature Hyper-V,DNS,DHCP -restart`
	5. Verify installation status  
	`Get-WindowsFeature -Name <name>`
+ To remove a Role/Feature
	1. Launch PowerShell as an Administrator
	2. Load the Server Manager module  
	3. Query the current status of the role/feature  
	4. Remove the role/feature  
	`Remove-WindowsFeature <name>`  
	`Remove-WindowsFeature Telnet-Client`  
	`Remove-WindowsFeature Hyper-V,DNS,DHCP -restart`
	5. Verify installation status  
+ NOTE: Attempting to install a feature that is already
  present will not have any affect. 
