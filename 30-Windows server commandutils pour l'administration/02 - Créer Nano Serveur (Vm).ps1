
Cls

Cd\
Md nano
Cd nano

Copy d:\NanoServer\NanoServerImageGenerator\*.* c:\nano

Get-Module
Import-Module ./NanoServerImageGenerator.psm1 -Verbose

New-NanoServerImage -MediaPath f:\ -BasePath c:\nano\base -TargetPath c:\nano\nano1.vhdx -Edition Datacenter -DeploymentType Guest -ComputerName nano1

New-Vm -Generation 2 -Name nano1 -SwitchName Lan -VHDPath c:\nano\nano1.vhdx
Start-VM -Name nano1
