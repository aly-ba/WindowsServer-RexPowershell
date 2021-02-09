Powershell for System Admins
============================================================

Active Directory Domain Services
------------------------------------------------------------

* Create/Modify/Delete Groups
  + Create
    - `New-ADGroup -Name "RODC Admins" -SamAccountName RODCAdmins -GroupCategory Security -GroupScope Global -Path "CN=Users,DC=Contoso,DC=Com"`
  + Modify
    - `Set-ADGroup RODCAdmins -GroupScope Universal`
  + Delete
    - `remove-adgroup RODCAdmins`

