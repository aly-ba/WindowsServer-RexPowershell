﻿
#prcoess
Get-Process | 
foreach{
        $proc = $_;   $proc.Modules |
        where { $_.ModuleName -eq "mscoree.dll" } |
        foreach { echo $proc }
}
# 
echo "Lowering installer process priorities"
Get-Process msiexec -ErrorAction Stop | 
    foreach { $_.PriorityClass = "BelowNormal" }
Read-Host -prompt "Press Enter to restore installer priorities"
Get-Process msiexec -ErrorAction SilentlyContinue | 
    foreach { $_.PriorityClass = "Normal" }

