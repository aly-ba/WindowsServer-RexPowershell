Filename: techskills-powershell-scripting-5-1-1-function-basics  
Show Name: PowerShell Scripting  
Topic Name: Functions  
Episode Name: Function Basics
Description: In this episode, we take a look at how to create a function in  
PowerShell. We demonstrate creating the function, and saving the function in a  
way that lends itself to reusability.  
Keywords: [keyword1,keyword2,keyword3]  

---

### Function Basics

* Functions are
  - A list of PowerShell statements
  - Assigned a name
  - Can have parameters
    - Read from prompt
    - From pipeline
  - Can act like cmdlets
* Function syntax

`function <function-name> {statements}`

* Create function
  - Copy finished-archive-files.ps1 to new script, test.ps1
  - Add default values for $path and $days
  - Comment out Move-Item
  - Analyze 'IF' statement, thinking about function
  - Copy 'IF' parts to new script, myFunctions.ps1
  - Remove 'Archive Files?'
  - Create $message parameter
  - Update 'switch' to return $true or $false
  - Add y & n options to 'while' and 'switch' statements
* Use function
    - Update test.ps1 to use function
    - No tab-autofill
  + Use in current session
    - Run script with function definition
      - Function now available for current session
    - Launch new PowerShell session
      - Function not available
    - Restart ISE to clear session
      - Function not available
  + Dot source per script
    - New script, function not available
    - Dot source function in script  
    `. c:\users\mike\documents\scripts\myFunction.ps1`
    - Must run script to load dot sourced files
  + Dot source in profile  
    `Set-Profile`
    - Pay attention to which profile
  + Create module
    - Show default module paths  
    `$env:PSModulePath`
    - Create module folder in user path
    - Create folder with same name as .ps1 file
    - Rename .ps1 to .psm1  
    `Get-Module -ListAvailable`
    - Can use Import-Module or just use function (3.0)
