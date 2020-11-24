###Wireshark 2.2.4 -- Conversation
============================================================ 
{FileName}techskills-wireshark224-7-1-use_advanced_features-MMDDYY
{Title}Use Advanced Features
{Subtitle}Wireshark 2.2.4
####Use Advanced Features
------------------------------------------------------------ 
* Computers Chat
	+ What makes up a human conversation?
		- You and I can have a conversation
			+ There something that we talk about
			+ It's not just random words, we connect
	* What makes up a computer conversation?
		- How do two computers have a conversation?
			+ Sender transmits signal to synchronize
			+ Receive acknowledges the transmission and tries
			  to synchronize with the sender.
			+ Sender acknowledges sync transmission
			+ Once connection is established, data can now
			  be transmitted between them.
	+ So how is this different?
		- The computer listen and transmit in very regular 
		  patterns, what is transmitted are FRAMES.
			+ Usually little over 1500 bytes
				- If less, data transmitted in single frames
				- If more, data is broken into multiple
				  frames to be sent.
			- that mean that packets have to be reassembled.
	+ Why does this matter?
		- Analysis of individual packets can be done but
		  limited usefulness (think of wheel of fortune)
		- But reassembled data means that we use wireshark 
		  to see the conversation.
	+ Demonstrate the use of TCP stream with Telnet and SSH
	+ **Thank you, Aaron Wellendorf!**--`ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 admin@10.0.47.2`  It
	  would have been completely out of my league without it.
	+ Check it out: https://medium.freecodecamp.com/upgrading-to-macos-sierra-will-break-your-ssh-keys-and-lock-you-out-of-your-own-servers-f413ac96139a#.9wihoxaow
* What is Expert Information?
	+ log of "interesting" traffic that Wireshark identifies.
	+ a better display for us the "uncommon" or "interesting"
	  traffic that novice users are not yet experience enough
	  to note, or that experienced users can see in one place.
	+ Packet #
	+ Severity
		- Chat: Workflow info
		- Note: Notable info (Pay attention to me! "error
		  codes")
		- Warn: Unusual error codes (Danger! Danger!)
		- Error: problem exist "malformed packets"
	+ Group
		- Checksum: invalid checksum
		- Sequence: protocol sequence unusual (retransmit or
		  skips)
		- Response Code: problematic application response 
		- Request Code: application request
		- Undecoded: cannot be decoded by disectors
		- Reassemble: problems with reassembly
		- Protocol: invalid field values or lengths
		- Malformed: malformed packet or disector issue
		- Debug: should not be seen in stable releases
	+ Protocol: TCP, UDP etc
	+ Summary: descriptive info
	+ demonstration of Expert Info  
