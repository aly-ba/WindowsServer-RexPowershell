Powershell for System Admins
============================================================

Active Directory Domain Services
------------------------------------------------------------

* Create/Modify/Delete OU Structures
  + Create
    - `New-ADOrganizationalUnit -Name UserAccounts -Path "DC=Contoso,DC=com"`
  + Modify
    - `Set-ADOrganizationalUnit -Identity "OU=UserAccounts,DC=Contoso,DC=com" -Description "Default OU for user accounts"`
  + Delete
    - `Set-ADOrganizationalUnit -Identity "OU=UserAccounts,DC=Contoso,DC=com" -ProtectedFromAccidentalDeletion $false`
    - `Remove-ADOrganizationalUnit UserAccounts`
