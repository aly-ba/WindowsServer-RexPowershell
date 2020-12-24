Filename: techskills-powershell-1-2-2-basic-syntax-and-help-pt2    
Show Name: PowerShell
Topic Name: Introduction to PowerShell
Episode Name: Basic Syntax and Help Pt 2
Description: In this episode, Mike and Cherokee demonstrate  
how to get cmdlet help in PowerShell. They also discuss how  
to interpret cmdlet syntax found in the help files.
Keywords: [keyword1,keyword2,keyword3]

---

### Basic Syntax and Help Pt 2

* Getting help
  + `Get-Help`
  + `Update-Help`
  + `Get-Help <command>`
  + `Get-Help <command> | more`
* Deciphering Get-Help output
	+ `[ ]` indicates a *Parameter*
	+ `< >` indicates a *DataType* to be provided
	+ Optional Parameters
		- The two are grouped together
		- `[-Name <string>]`
		- `[[-Name] <string>]`
	+ Required Parameters
		- The two are separate
		- `[-Name] <string>`

  + More help
    - To see examples `-examples`
    - More information `-detailed`
    - Technical information `-full`
    - Online help `-online`
    - Readability `-ShowWindow`
