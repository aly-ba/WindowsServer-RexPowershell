PowerShell for System Admins - 2.0 Server Management
============================================================

2.4 Configuring Networking
------------------------------------------------------------

* Assigning a Basic IP Configuration
	+ If necessary, `Import-Module NetAdapter`
	+ Query Available Adapters
		- `Get-NetAdapter`
		- Returns Name (Alias) as well as ifIndex #
		- ifIndex is used in a number of commands
	+ There are multiple ways to reference a specific
	  adapter
	  	- `-Name "Local Network"`
	  	- `-InterfaceIndex 12`
	  	- `-InterfaceAlias "Local Network"`
	+ When Working with Adapaters...
		- `New-*` Creates something new
		- `Set-*` Modifies an existing configuration
	+ Enable / Disable DHCP
		- `Get-NetAdapter -Name "Local Network" | Set-NetIPInterface -DHCP Disabled`
	+ Assign a Static IP (IPv4)
		- Method #1: `Get-NetAdapter -Name "Local Network" | New-NetIPAddress -AddressFamily IPv4 IPAddress 192.168.29.3 -PrefixLength 24 -Type Unicast -DefaultGateway 192.168.29.2`
		- Method #2: `New-NetIPAddress -InterfaceIndex 12 -AddressFamily IPv4 -IPAddress 192.168.29.3 -PrefixLength 24 -Type Unicast -DefaultGateway 192.168.29.2`
		- Method #3: `New-NetIPAddress -InterfaceAlias "Local Network" -AddressFamily IPv4 -IPAddress 192.168.29.3 -PrefixLength 24 -Type Unicast -DefaultGateway 192.168.29.2`
	+ Assign a Static IP (IPv6)
		- `New-NetIPAddress -InterfaceIndex 12 -IPAddress 2001:0db8::3 -PrefixLength 64 -DefaultGateway 2001:0db8::2`
	+ Assign Name Server
		- `Set-DnsClientServerAddress -InterfaceAlias "Local Network" -ServerAddresses 192.168.29.3,8.8.8.8`
