Powershell for System Admins
============================================================

Active Directory Domain Services
------------------------------------------------------------

* Create/Modify/Delete User Accounts
  + Create
    - `New-ADUser NateCopeland`
    - `New-ADUser –Name “Ronnie Wong” –GivenName Ronnie –Surname Wong –UserPrincipalName rwong@mw.local –SamAccountName rwong –Enabled 1 –AccountPassword (Read-Host –AsSecureString “Password”)`
  + Modify
    - `Set-ADUser -Identity "rwong" -Manager "DonPezet"`
    - `Get-ADUser -Identity "rwong" | Set-ADUser -Manager "DonPezet"`
  + Delete
    - `Remove-ADUser -Identity rwong`
