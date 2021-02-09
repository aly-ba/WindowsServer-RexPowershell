Powershell for System Admins
============================================================

DHCP Scopes
------------------------------------------------------------

* Create a Scope
  + `Add-DhcpServerv4Scope -Name 'ITProTV Studio' -StartRange 10.1.230.100 -EndRange 10.1.230.150 -SubnetMask 255.255.255.0`
  + Add `-ComputerName <Name>` to point to the DHCP server
    if commands are being executed remotely
* Delete a scope
  + `Remove-DhcpServerv4Scope -ScopeId 10.1.230.0`
* Configuring scope options
  + `Set-DhcpServerv4OptionValue -ScopeId 10.1.230.0 -DnsServer 10.1.230.11 -DnsDomain studio.itpro.tv -Router 10.1.230.1`
  + More examples available on [TechNet][1]
* Enable/disable scope
  + `Set-DhcpServerv4Scope -ScopeId 10.1.230.0 -State <Active/Inactive>`


[1]:http://technet.microsoft.com/en-us/library/jj590669.aspx
