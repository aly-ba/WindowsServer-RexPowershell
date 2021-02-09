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
  + Create a child domain
    - `Install-ADDSDomain -NewDomainName lab -ParentDomainName itpro.tv -Credential (Get-Credential)`
    - `Install-ADDSDomain -NewDomainName lab -ParentDomainName itpro.tv -InstallDNS -CreateDNSDelegation -DomainMode Win2012R2 -ReplicationSourceDC DC1.itpro.tv -SiteName gnv -DatabasePath "D:\NTDS"       -SYSVOLPath "D:\SYSVOL" -LogPath "E:\Logs" -SkipPreChecks -NoGlobalCatalog -Credential (Get-Credential)`
    - http://technet.microsoft.com/en-us/library/hh974722.aspx
