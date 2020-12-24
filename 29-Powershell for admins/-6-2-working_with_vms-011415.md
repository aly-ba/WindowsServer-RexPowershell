Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* Working with Virtual Machines (VM)
  + Creating a VM
    - Create a VM with 2GB of RAM and a 64GB Dynamically
      Expanding Disk
      + `New-VM -Name "WEBSERVER01" -MemoryStartupBytes 2048MB -SwitchName "Local Area Network" -NewVHDPath "C:\VM\WEBSERVER01-Disk1.vhdx" -NewVHDSizeBytes 64GB`
  + Modifying a VM
    - Adjust # of CPUs
      + `Set-VMProcessor "WEBSERVER01" -Count 2`
    - Enable/Disable Dynamic Memory
      + `Set-VMMemory "WEBSERVER01" -DynamicMemoryEnabled $true`
  + Start/Stop VMs
    - `Start-VM "WEBSERVER01"`
    - `Stop-VM "WEBSERVER01"`
    - `Start-VM *`
  + Delete a VM
    - `Remove-VM "WEBSERVER01"`
