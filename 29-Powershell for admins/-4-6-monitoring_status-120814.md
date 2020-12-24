Powershell for System Admins
============================================================

Monitoring DHCP 
------------------------------------------------------------

* Monitoring Status
  + List Scopes
    - `Get-DhcpServerv4Scope`
  + List Leases
    - `Get-DhcpServerv4Lease -AllLeases -ScopeId 10.1.230.0`
  + Scope usage
    - `Get-DhcpServerv4ScopeStatistics -ScopeId 10.1.230.0`
