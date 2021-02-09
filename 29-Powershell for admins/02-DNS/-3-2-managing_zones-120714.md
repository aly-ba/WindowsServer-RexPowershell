Powershell for System Admins
============================================================

3.2 Managing Zones
------------------------------------------------------------

* Configuring Zones
  + Create a primary zone
    - `Add-DnsServerPrimaryZone -Name "west01.contoso.com" -ReplicationScope "Forest" -PassThru`
  + Create a file-backed primary zone
    - `Add-DnsServerPrimaryZone -Name "west02.contoso.com" -ZoneFile "west02.contoso.com.dns"`
  + Create a reverse lookup zone
    - `Add-DnsServerPrimaryZone -NetworkID "10.1.0.0/24" -ReplicationScope "Forest"`
  + Create a file-backed reverse lookup zone
    - `Add-DnsServerPrimaryZone -NetworkID 10.3.0.0/24 -ZoneFile "0.3.10.in-addr.arpa.dns"`
  + Add a secondary DNS server zone
    - `Add-DnsServerSecondaryZone -Name "west01.contoso.com" -ZoneFile "western.contoso.com.dns"
      -MasterServers 172.23.90.124 `
  + Allow zone transfers
    - `Set-DnsServerPrimaryZone -Name west01.contoso.com -notify notify
        -SecondaryServers 192.168.1.103 -SecureSecondaries TransferToSecureServers`
