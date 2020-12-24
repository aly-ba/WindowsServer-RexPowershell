New-ModuleManifest -path C:\Users\Admin\Documents\PowerShell\Modules\Alphorm\Alphorm.psd1 `
                                   -RootModule "alphorm.psm1" `
                                   -Author "John Mike"  `
                                   -CompanyName "Alphorm" `
                                   -ModuleVersion "1.1" `
                                   -Description "Ce module permet"
                                

Test-ModuleManifest -Path C:\Users\Admin\Documents\PowerShell\Modules\Alphorm\Alphorm.psd1

#Aller sur : https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/new-modulemanifest?view=powershell-7