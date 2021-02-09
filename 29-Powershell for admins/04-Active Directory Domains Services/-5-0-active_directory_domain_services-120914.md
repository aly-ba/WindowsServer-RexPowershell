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
  + Create a child domain
    - `Install-ADDSDomain -NewDomainName lab -ParentDomainName itpro.tv -Credential (Get-Credential)`
    - `Install-ADDSDomain -NewDomainName lab -ParentDomainName itpro.tv -InstallDNS -CreateDNSDelegation -DomainMode Win2012R2 -ReplicationSourceDC DC1.itpro.tv -SiteName gnv -DatabasePath "D:\NTDS"       -SYSVOLPath "D:\SYSVOL" -LogPath "E:\Logs" -SkipPreChecks -NoGlobalCatalog -Credential (Get-Credential)`
    - http://technet.microsoft.com/en-us/library/hh974722.aspx
  + Add an additional domain controller
    - `Install-ADDSDomainController -InstallDns -DomainName lab.itpro.tv`
    - http://technet.microsoft.com/en-us/library/hh974723.aspx
  + Add a Read-only domain controller
    - `Install-ADDSDomainController -InstallDns -DomainName lab.itpro.tv -ReadOnlyReplica -DelegatedAdministratorAccountName "lab\nate" -AllowPasswordReplicationAccountName "" -UseExistingAccount`
    - http://technet.microsoft.com/en-us/library/hh974723.aspx
* Create/Modify/Delete User Accounts
  + Create
    - `New-ADUser NateCopeland`
    - `New-ADUser –Name “Ronnie Wong” –GivenName Ronnie –Surname Wong –UserPrincipalName rwong@mw.local –SamAccountName rwong –Enabled 1 –AccountPassword (Read-Host –AsSecureString “Password”)`
  + Modify
    - `Set-ADUser -Identity "rwong" -Manager "DonPezet"`
    - `Get-ADUser -Identity "rwong" | Set-ADUser -Manager "DonPezet"`
  + Delete
    - `Remove-ADUser -Identity rwong`
* Create/Modify/Delete Groups
  + Create
    - `New-ADGroup -Name "RODC Admins" -SamAccountName RODCAdmins -GroupCategory Security -GroupScope Global -Path "CN=Users,DC=Contoso,DC=Com"`
  + Modify
    - `Set-ADGroup RODCAdmins -GroupScope Universal`
  + Delete
    - `remove-adgroup RODCAdmins`
* Create/Modify/Delete OU Structures
  + Create
    - `New-ADOrganizationalUnit -Name UserAccounts -Path "DC=Contoso,DC=com"`
  + Modify
    - `Set-ADOrganizationalUnit -Identity "OU=UserAccounts,DC=Contoso,DC=com" -Description "Default OU for user accounts"`
  + Delete
    - `Set-ADOrganizationalUnit -Identity "OU=UserAccounts,DC=Contoso,DC=com" -ProtectedFromAccidentalDeletion $false`
    - `Remove-ADOrganizationalUnit UserAccounts`
* Import/Export Data
  + Import new users from a CSV file
    - ``
* Performing Bulk Operations
    - `Get-ADUser -Filter {-not(department -like "*")} | Set-ADUser -department "IT"`
    - `$logonDate = (get-date).addDays(-90)`
    - `Get-ADUser -Filter{lastLogon -le $logonDate} | Disable-Account`
test changes
