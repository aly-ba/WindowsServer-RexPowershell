Filename: techskills-powershell-1-2-1-basic-syntax-and-help  
Show Name: PowerShell
Topic Name: Introduction to PowerShell  
Episode Name: Basic Syntax and Help  
Description: In this episode, Mike and Cherokee explain the  
basic syntax of PowerShell. They look at listing installed  
and available modules, and how to import new modules. They  
also show how to search for cmdlets.  
Keywords: [keyword1,keyword2,keyword3]

---

### Basic Syntax and Help

* PowerShell is made up of cmdlets
* Cmdlets are organized into Modules
* Modules are sets of related PowerShell functionalities
* Command Structure
	+ Verb-Noun `Get-Help`
* Listing Commands
	+ `Get-Command | Measure`
    - List of all installed commands
  + `Get-Command -ListImported | Measure`
* Listing Modules
  + `Get-Module`
  + `Get-Module -ListAvailable`
  + `Get-Command -Module Microsoft.PowerShell.Management`
* Import Modules
  + `Import-Module SmbShare`
  + `Get-Module`
  + `Get-Command -ListImported | Measure`
* Finding Commands
  + An asterisk is the wildcard character
  + `Get-Command *smb*`
