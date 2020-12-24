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
  + Add an additional domain controller
    - `Install-ADDSDomainController -InstallDns -DomainName lab.itpro.tv`
    - http://technet.microsoft.com/en-us/library/hh974723.aspx
  + Add a Read-only domain controller
    - `Install-ADDSDomainController -InstallDns -DomainName lab.itpro.tv -ReadOnlyReplica -DelegatedAdministratorAccountName "lab\nate" -AllowPasswordReplicationAccountName "" -UseExistingAccount`
    - http://technet.microsoft.com/en-us/library/hh974723.aspx
