Powershell for System Admins
============================================================

3.3 Managing DNS Records
------------------------------------------------------------

* Adding Resourse Records
  + Add an A record
    - `Add-DnsServerResourceRecord -ZoneName "Contoso.com" -A -Name "Host34"
        -AllowUpdateAny -IPv4Address "10.17.1.34" -TimeToLive 01:00:00 -AgeRecord`
  + Add an AAAA resource record
    - `Add-DnsServerResourceRecord -AAAA -Name "Host73" -ZoneName "Contoso.com"
        -AllowUpdateAny -IPv6Address "3ffe::1" -TimeToLive 01:00:00 -AgeRecord`
  + Add a CNAME resource record
    - `Add-DnsServerResourceRecord -CName -Name "labhost34" -HostNameAlias "Host34.lab.contoso.com"
        -ZoneName "Contoso.com" -AllowUpdateAny  -TimeToLive 01:00:00`
  + Add a PTR resource record
    - `Add-DnsServerResourceRecord -Name "77" -Ptr -ZoneName "0.168.192.in-addr.arpa"
        -AllowUpdateAny -PtrDomainName "host77.contoso.com"`
  + Add an MX resource record
    - `Add-DnsServerResourceRecord -Name ".-MX -ZoneName "contoso.com"
        –MailExchange "mail.contoso.com" -Preference 10`
  + Add an SRV resource record
    - `Add-DnsServerResourceRecord -Srv -Name "sip" -ZoneName "contoso.com"
        –DomainName "sipserver1.contoso.com" –Priority 0 –Weight 0 –Port 5060`
