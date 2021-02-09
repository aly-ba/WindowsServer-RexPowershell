PowerShell for System Admins - 2.0 Server Management
============================================================

2.9 File Operations
------------------------------------------------------------

* Command output to a file
  - `get-process | out-file -filepath F:\Scripts\process.txt`
  - `get-process | out-file F:\Scripts\process.txt -noclobber`
  - `get-process | out-file F:\Scripts\process.txt -noclobber -append`
* Output file to screen
  - `get-content f:\scripts\computers.txt | out-string`

http://technet.microsoft.com/en-us/library/dd315304.aspx
