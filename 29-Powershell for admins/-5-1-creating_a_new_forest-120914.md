Powershell for System Admins
============================================================

Active Directory Domain Services
------------------------------------------------------------

* Installing Active Directory Domain Services
  + Install the AD-DS role
    - `Install-windowsfeature -name AD-Domain-Services –IncludeManagementTools`
  + List available commands
    - `Get-command –module ADDSDeployment`
* Promoting a DC
  + Create a new forest
    - `Install-ADDSForest -DomainName itpro.tv -InstallDNS`
    - `Install-ADDSForest -DomainName itpro.tv -CreateDNSDelegation -DomainMode Win20012R2 -ForestMode Win2012R2 -DatabasePath "d:\NTDS" -SysvolPath "d:\SYSVOL" -LogPath "e:\Logs"`
    - http://technet.microsoft.com/en-us/library/hh974720.aspx
