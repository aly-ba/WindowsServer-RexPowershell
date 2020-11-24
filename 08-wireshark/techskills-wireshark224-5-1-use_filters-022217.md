###Wireshark 2.2.4 -- Use Filters
============================================================ 
{FileName}techskills-wireshark224-5-1-use_filters-MMDDYY
{Title}Use Filters
{Subtitle}Wireshark 2.2.4
####Use Filters
------------------------------------------------------------ 

* Packet Capturing can be overwhelming
	- "Needle in the haystack"
	- Flood of information can cost time
	- goal should be seeing exactly what we want to see
	- using the filters help us to do so.
* Capture Filters vs. Display Filters
	+ Capture Filters--once implemented, we cannot get access
	  to the data that we didn't filter.  There is no history
	  with capture filters.
		- Set before capture occurs
		- Cannot be modified during capture
		- Reduces the amount captured and sent to display list
		- You see this on the `options`
		- Demonstrate Capture Filter
			+ `host 10.0.46.200` (only to or from host)
			+ `net 10.0.46.0/24` (only to or from network)
			+ `src net 10.0.46.0/24` (only from network)
			+ `dst net 10.0.46.0/24` (only to network)
			+ `port not 53 and not arp` (all but dns and arp)
			+ `not broadcast and not multicast` (only unicast)
		- Best practice is to use these sparingly
	+ Display Filters--captures everything, this simply allows
	  use to limit our display to what we want to see.  We
	  remove the display filter, the original data is still
	  there.
		- Set after the capture occurs
		- Can be modified at any time
		- You see this as a toolbar on main interface
		- also used for ColoringRules
		- Demonstrate Display Filter
			+ `ip.addr == 10.0.46.200` (only to or from host)
			+ `! ( ip.addr ==10.0.46.200 )` (all but to or
			   from this host)
			+ `tcp.port eq 3389 or icmp` (only 3389 and ICMP)