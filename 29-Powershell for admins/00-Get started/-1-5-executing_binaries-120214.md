PowerShell for System Admins - 1.0 Introduction to PowerShell
============================================================

1.5 Executing Binaries
------------------------------------------------------------

+ Can be called by name
	- `Notepad.exe`
+ Special syntax if it contains spaces
	- `& ("C:\Program Files (x86)\Microsoft Office\Office14\Winword.exe")`
+ Special characters can cause issues too. 
+ Use the stop parsing command to "comment" out the 
  remaining items
  	- `--%`
  	- `icacls C:\Docs --% /grant "ITPROTVNET\Don Pezet":(CI)(OI)F`
