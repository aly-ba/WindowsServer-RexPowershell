PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.13 Local vs Remote Management
------------------------------------------------------------

* Local Management
	+ Normally, PowerShell commands are executed against the 
	  local host.
	+ Some commands support a remote target, but not all
	+ Local commands provide the most reliable environment
	  and the easiest troubleshooting/debugging
* Remote Management
	+ Option 1: Proxying commands to a remote host
		- `Import-PSSession` can allow you to use the 
		  installed PowerShell modules on a remote server
		  without installing them locally.
  		- Proxies any commands that are missing on localhost 
  		  over to the remote host
  		- Fairly unreliable
  		- Errors can be difficult to troubleshoot
  		- Security context can be difficult to keep track of
  	+ Option 2: Use a remote shell on the desired host
  		- The best option
  		- Commands are not proxied, instead you are 
  		  executing them on the remote host itself
  		- To configure a target (the remote system): 
			+ Enable WinRM service
			+ Allow WinRM in Windows Firewall
			+ Enable-PSRemoting –force
		- On your local system:
			+ `Enter-PSSession Server01`
			+ `Exit-PSSession`
	+ Option 3: Remote execute a command on multiple systems
		+ Very useful for automation
		+ A command is executed simultaneously on several
		  remote systems
		+ Uses the `Invoke-Command` cmdlet
		+ Example:
			+ `Invoke-Command -computername server01, server02, server03 -credential domain\user -scriptblock {get-process}`

