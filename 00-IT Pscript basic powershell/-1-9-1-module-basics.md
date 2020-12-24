Filename: techskills-powershell-1-9-1-module-basics  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: Module Basics  
Description: In this episode, Mike and Cherokee discuss the  
concept of modules in PowerShell. They look at the default  
locations where modules are stored, and the components that  
make up a module.   
Keywords: [keyword1,keyword2,keyword3]

---

### Module Basics

* Modules have a .psm1 file extension
* Modules are stored in several places
  - `$env:PSModulePath -split ';'`
* Put module in a folder with the same name as the .psm1 file
* Module manifests
  - Store metadata about the module as a hashtable
  - .psd1 file extension
  - Name should match folder
  - `New-ModuleManifest`
```
$manifest = @{
    Path              = '.\MyFunctions\MyFunctions.psd1'
    RootModule        = 'MyFunctions.psm1'
    Author            = 'Mike Rodrick'
}
New-ModuleManifest @manifest
```
