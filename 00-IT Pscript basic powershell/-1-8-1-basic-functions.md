Filename: techskills-powershell-1-8-1-basic-functions  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: Basic Functions  
Description: In this episode, Mike and Cherokee take a look  
at basic functions in PowerShell. They discuss the components  
of a function, the format of a function, and adding function  
statements.  
Keywords: [keyword1,keyword2,keyword3]  

---

### Basic Functions

* A function is a list of Windows PowerShell statements that  
  has a name that you assign
* A function includes the following items:
  - A Function keyword
  - A scope (optional)
  - A name that you select
  - Any number of named parameters (optional)
  - One or more Windows PowerShell commands enclosed in braces
* Function format
  - `function <function-name> {statements}`
  - `function Start-PSAdmin {Start-Process PowerShell -Verb RunAs}`
* To add statements to the function, use one of the following
  - Use a semi-colon to separate the statements
  - Type each statement on a separate line
