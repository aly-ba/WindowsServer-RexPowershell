Powershell for System Admins
============================================================

Active Directory Domain Services
------------------------------------------------------------

* Performing Bulk Operations
    - `Get-ADUser -Filter {-not(department -like "*")} | Set-ADUser -department "IT"`
    - `$logonDate = (get-date).addDays(-90)`
    - `Get-ADUser -Filter{lastLogon -le $logonDate} | Disable-Account`

