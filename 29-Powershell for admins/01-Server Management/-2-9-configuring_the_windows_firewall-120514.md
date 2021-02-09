PowerShell for System Admins - 2.0 Server Management
============================================================

2.9 Configuring the Windows Firewall
------------------------------------------------------------

* Configuring the Windows Firewall
  + If necessary, `Import-Module NetSecurity`
  + Enable/Disable Firewall
    - `Set-NetFirewallProfile -All -Enabled “true”`
    - `Set-NetFirewallProfile -Name Domain -Enabled “false”`
  + List existing rules
    - `Get-NetFirewallRule`
  + Creating a Firewall Rule By Port #
    - `New-NetFirewallRule -DisplayName "FTP Traffic" -Direction Inbound -LocalPort 20-21 -Protocol TCP -Action Allow`
    - Verify: `Get-NetFirewallRule -DisplayName "FTP Traffic"`
  + Creating a Firewall Rule By Program
    - `New-NetFirewallRule -Program “C:\Program Files (x86)\FileZilla Server\FileZilla Server.exe” -Action Allow -Profile Any -DisplayName “FileZilla FTP Server” -Direction Inbound`
  + Modifying a Firewall Rule
    - `Set-NetFirewallRule -DisplayName “FTP Traffic” -RemoteAddress “192.168.29.100-192.168.29.110″`
