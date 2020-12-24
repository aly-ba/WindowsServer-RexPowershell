Powershell for System Admins
============================================================

Authorizing a DHCP
------------------------------------------------------------

* Authorize server
  + List authorized servers
    - `Get-DhcpServerInDC`
  + Authorize a server
    - `Add-DhcpServerInDC -DnsName server1.domain.com -IPAddress 192.168.0.2`
  + De-Authorize a server
    - `Remove-DhcpServerInDC -DnsName server1.domain.com -IPAddress 192.168.0.2`
