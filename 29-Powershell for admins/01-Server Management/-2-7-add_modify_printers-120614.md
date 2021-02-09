PowerShell for System Admins - 2.0 Server Management
============================================================

2.7 Add/Modify Printers
------------------------------------------------------------

* Add printer
  + Installing a printer driver for the new printer
    - `Add-PrinterDriver -ComputerName Server1 -Name "Dell Color Laser PCL6 Class Driver"`
  + Creating a Standard TCP/IP Port for the printer
    - `Add-PrinterPort -ComputerName Server1 -Name "192.168.1.103" -PrinterHostAddress "192.168.1.103"``
  + Installing the printer using the driver and port specified
    - `Add-Printer -ComputerName Server1 -Name "Sales Printer"
      -DriverName "Dell Color Laser PCL6 Class Driver" -Shared
      -ShareName "SalesPrint" -PortName "192.168.1.103" -published`
  + Install the printer on a client
    - `Add-Printer -ConnectionName \\Server1\SalesPrint`
* Modify printer
  + `Set-PrintConfiguration -ComputerName Server1 -PrinterName "Sales Printer" -PaperSize Legal`
* Printer permissions
  + Are set using SDDL (Security Descriptor Definition Language) string
    - http://msdn.microsoft.com/en-us/library/aa374928(v=vs.85).aspx
* Pause/Resume/Remove Print Jobs
  + Return a list of print jobs
    - `Get-Printjob -PrinterName "salesprint"`
  + Suspend a print job
    - `Suspend-PrintJob -PrinterName "SalesPrint" -ID x`
  + Resume a suspended print job
    - `Resume-PrintJob -PrinterName "SalesPrint" -ID x`
  + Remove a print job
    - `Remove-PrintJob -PrinterName "SalesPrint" -ID x`
* Stop/Start/Restart Spooler
  + Stop the print spooler
    - `Stop-Service -Name spooler`
  + Start the print spooler
    - `Start-Service -Name spooler`
  + Restart the print spooler
    - `Restart-Service -Name spooler`
  + Suspend the print spooler
    - `Suspend-Service -Name spooler`
* Remove printer
  + Remove printer from specified computer
    - `Remove-Printer -Name "SalesPrint"`

http://technet.microsoft.com/en-us/library/hh918357.aspx
