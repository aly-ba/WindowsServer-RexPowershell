Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* Working with Virtual Hard Drives (VHD)
  + Creating VHDs
    - Create a Dynamic VHD
      + `New-VHD -Path "C:\VM\WEBSERVER01-Disk2.vhdx" -SizeBytes 36GB`
    - Create a Fixed Size VHD
      + `New-VHD -Path "C:\VM\WEBSERVER01-Disk3.vhdx" -Fixed -SizeBytes 36GB`
    - Create a Differencing Disk
      + `New-VHD -ParentPath "C:\VM\WEBSERVER01-Disk1.vhdx" -Path "C:\VM\WEBSERVER02-Disk1.vhdx" -Differencing`
  + Attach an Existing VHD to a VM
    `-Add-VMHardDiskDrive -VMName "WEBSERVER01" -Path "C:\VM\WEBSERVER01-Disk2.vhdx"`
    `-Add-VMHardDiskDrive -VMName "WEBSERVER01" -Path "C:\VM\WEBSERVER01-Disk3.vhdx"`
