
# Attention les commandes ci dessous doivent être exécutées uniquement en session Powershell à distance (depuis S1 par exemple)
# Ne pas utiliser Powershell Direct
# https://docs.microsoft.com/fr-fr/windows-server/get-started/deploy-nano-server

# Installe le Provider (pour les versions mises à jours)
Install-PackageProvider NanoServerPackage
Import-PackageProvider NanoServerPackage

# Installe le provider (sans la dernière mise à jour cumulative KB3206632 ou version ultérieure)
Save-Module -Path "$Env:ProgramFiles\WindowsPowerShell\Modules\" -Name NanoServerPackage -MinimumVersion 1.0.1.0
Import-PackageProvider NanoServerPackage

# Valider l'installation du Provider "Nugget" 
Get-PackageProvider

# Trouver les Packages
Find-NanoServerPackage -Name * -DisplayCulture
Find-NanoServerPackage -Name * -Culture fr-fr 
Find-NanoServerPackage -Name *dns* -Culture fr-fr
Find-NanoServerPackage -Name *iis* -Culture fr-fr

# Sauvegarder les Packages
Save-Package -Name Microsoft-NanoServer-DNS-Package -Culture fr-fr
Save-Package -Name Microsoft-NanoServer-IIS-Package -Culture fr-fr

# Installer les Packages
Install-NanoServerPackage -Name Microsoft-NanoServer-DNS-Package -Culture fr-fr
Install-NanoServerPackage -Name Microsoft-NanoServer-IIS-Package -Culture fr-fr
Install-NanoServerPackage -Name Microsoft-NanoServer-Compute-Package -Culture fr-fr

# Valider la présence des packages
Get-WindowsOptionalFeature -Online




