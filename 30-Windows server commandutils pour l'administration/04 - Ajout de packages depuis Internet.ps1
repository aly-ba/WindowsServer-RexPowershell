
# Active le dossier c:\nano
Cd\
Cd nanoserver
Cls

# Importe le module NanoServerImageGenerator
Import-Module c:\Nanoserver\NanoServerImageGenerator\NanoServerImageGenerator.psm1 -Verbose# Crée Nano1New-NanoServerImage -MediaPath e:\ -BasePath c:\Nanoserver -TargetPath c:\vm\nano1.vhdx -Edition Datacenter -DeploymentType Guest -ComputerName nano1New-vm -Name nano1 -Switchname Lan -Vhdpath c:\vm\nano1.vhdx -Generation 2

Start-Vm -Name Nano1