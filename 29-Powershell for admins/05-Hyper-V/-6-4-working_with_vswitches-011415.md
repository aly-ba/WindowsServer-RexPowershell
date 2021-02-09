Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* Working with Virtual Switches (vSwitch)
  + List Virtual Switches
    - `Get-VMSwitch`
  + Create a Private Network
    - `New-VMSwitch "Private LAN" -SwitchType Private -Notes "This is an isolated network"``
  + Create an External (Public) Network
    - Find the Adapter Name
      + `Get-NetAdapter -Name * | Format-List`
    - Create the Switch
      + `New-VMSwitch -Name "Local Area Network" -NetAdapterName "Local Area Connection" -AllowManagementOS $true`
  + Attach a VM to a Virtual Switch
    - `Add-VMNetworkAdapter -VMName "WEBSERVER01" -SwitchName "Private LAN"`
