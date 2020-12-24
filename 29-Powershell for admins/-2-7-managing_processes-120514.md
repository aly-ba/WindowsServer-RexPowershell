PowerShell for System Admins - 2.0 Server Management
============================================================

2.7 Managing Processes
------------------------------------------------------------

* PowerShell can be used as a TaskManager replacement
* List running processes
  + `Get-Process`
  + `Get-Process -Id 1`
  + `Get-Process -Name iexplore,explorer`
* Sort by CPU/Memory
  + `Get-Process | Sort-Object cpu -Descending`
* Kill processes
  + `Stop-Process iexplore`
  + Hunt for frozen processes and stop them
    - `Get-Process | Where-Object -FilterScript {$_.Responding -eq $false} | Stop-Process`
