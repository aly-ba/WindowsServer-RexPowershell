Powershell for System Admins
============================================================

3.4 Monitoring DNS Status
------------------------------------------------------------

* Monitoring Status
  + Get server configuration
    - `Get-DnsServer`
  + Get server statistics for the local DNS server
    - `Get-DnsServerStatistics`
  + Get server statistics for a specific zone
    - `Get-DnsServerStatistics -ZoneName contoso.com`
  + Clear statistics for a specific zone
    - `Get-DnsServerStatistics -ZoneName contoso.com -Clear`
