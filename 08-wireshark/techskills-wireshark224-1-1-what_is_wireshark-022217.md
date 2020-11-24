###Wireshark 2.2.4 -- Network Protocol Analyzer
============================================================ 
{FileName}techskills-wireshark224-1-1-what_is_wireshark-MMDDYY
{Title}What is Wireshark?
{Subtitle}Wireshark 2.2.4
####What is Wireshark?
------------------------------------------------------------ 

* "What is Wireshark?" -- mini swiss army knife
	+ Packet Capture (Sniffer)
		- This where Wireshark begins to work.  Sees data,
		  copies it ans writes it.
		- monitors the NIC for all traffic on the interface
		  it captures it and writes to a file.
		- e.g. UDP, TCP, telnet, SSH --any communications
		- compare with `TCPdump` in Unix and Linux.
	+ Packet Analyzer
		- The analysis of the captured information is what
		  helps us to assign a meaning to the capture.
		- Puts the capture into a meaningful form for analysis
	+ Protocol Analyzer
		- Helps us to find patterns and make decisions based
		  on the captured data.
		- Provides additional helpful data based on the capture
		  and packet analysis.  So this a bit more advanced
		  than just a packet analyzer.
		- Makes the data captured into simple to understand
		  format so that we can interpret what that means for
		  us.
* "Any other tools like it?"
	+ High end tools like Fluke Network Inspector
	+ Microsoft Network Monitor 3.4 
	+ Only operates on Windows 
	+ Wireshark is open source and can operate on multiple
	  platorms -- Windows, Linux and Mac and Free!
* "Does Wireshark go by another name?"
	+ It was invented by Gerald Combs in 1998 as an open 
	  source project.  Originally given the name Ethereal
	  the name was changed when he left the company which
	  had trademarked the name so he renamed it Wireshark.
	+ Today, and for a long time, the develop community for
	  it has been volunteer developers, generous of time
	  and talent to help it become the most popular and
	  best tool available for the majority of networking
	  analysis.
	+ Today, Wireshark's main sponsor is Riverbed Technology
	  that provides funding and makes tools that integrate
	  with Wireshark
* Anything Special I need to have to run Wireshark?
	+ Promicuous Mode NIC