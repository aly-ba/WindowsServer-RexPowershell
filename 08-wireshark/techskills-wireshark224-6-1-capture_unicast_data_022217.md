###Wireshark 2.2.4 -- Unicast Data
============================================================ 
{FileName}techskills-wireshark224-6-1-capture_unicast_data-MMDDYY
{Title}Capture Unicast Data
{Subtitle}Wireshark 2.2.4
####Capture Unicast Data
------------------------------------------------------------ 

* Capturing packet placement is important!
	+ Simple Diagram
* Default capture on a switched network
	+ 4 possible traffic types
		- Broadcast (ffff.ffff.ffff)
		- Multicast (0100.5eXX.XXXX)
		- Unknown Unicast (not in mac address table)
		- Unicast (unique)
	+ Where I capture, I may see 3 of the 4 easily but
	  not easy to see unicast.
* May require one of two options
	+ Port Mirroring or Cisco SPAN
		- `monitor session 1 source interface fastethernet 0/1`
		- `monitor session 1 destination interface fastethernet
		  0/2`
		- Gotcha, bandwidth
