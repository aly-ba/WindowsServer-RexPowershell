PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.9 Script Execution Policies
------------------------------------------------------------

* Modes
	+ *Restricted* (Default) - Interactive commands
	  only, no scripts allowed.
	+ *All Signed* - Only scripts signed by a trusted
	  publisher are allowed to execute.
	+ *Remote Signed* - Local unsigned scripts can
	  execute alongside signed remote scripts.
	+ *Unrestricted* - All scripts can execute
	  regardless of signature.
* Syntax
	+ `Set-ExecutionPolicy <name>`
	+ `Get-ExecutionPolicy`
* Example
	+ `Set-ExecutionPolicy Unrestricted`
	+ `Set-ExecutionPolicy RemoteSigned`

