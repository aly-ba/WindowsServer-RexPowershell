
# Créer un serveur Nano Directement intégré au domaine
New-NanoServerImage -DeploymentType Guest -Edition Datacenter -MediaPath d:\ -BasePath c:\nano\base -TargetPath c:\nano\nano1.vhdx -ComputerName nano1-InterfaceNameOrIndex Ethernet -Ipv4Address 10.0.0.11,-Ipv4SubnetMask 255.0.0.0-Ipv4Dns 10.0.0.1-DomainName corp.lan

