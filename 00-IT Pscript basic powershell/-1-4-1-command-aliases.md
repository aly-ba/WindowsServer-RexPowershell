Filename: techskills-powershell-1-4-1-piping-and-formatting  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: Piping and Formatting  
Description: In this episode, Mike and Cherokee look at using  
command piping in PowerShell. They also look at formatting  
cmdlet output.  
Keywords: [keyword1,keyword2,keyword3]  

---

### Piping and Formatting

* Output of one command becomes input for the next
* Referred to as a command pipeline
* Examples
	- `command-1 | command-2 | command-3`
	- `Get-Service | Sort-Object -property status`
* Creates a new variable called `$_`
* `$_` represents the results of the previous command
* Can be used to run one command multiple times
	+ Needed when command-1 generates multiple results
	  but command-2 only accepts one result at a time
	+ For example, `Get-Process` outputs multiple
	  results and you want to pull details about each
		- `Get-Process | Write-Host $_.name`
			- Fails when executed because Write-Host
			  expects one value
		- `Get-Process | ForEach-Object { Write-Host $_.name }`
			- Executes successfully
* Format cmdlets
  - Each format cmdlet has default properties
    - `Get-Service` to show default formatting
  - `-Property` to specify which properties to display
  - Format-Wide
    - Only shows a single property
    - `Get-Service | Format-Wide`
    - `Get-Service | Format-Wide -Property DisplayName`
    - `Get-Service | Format-Wide -Column 1`
  - Format-List
    - Accept list of properties
    - `Get-Service | Format-List`
    - `Get-Service | Format-List -Property *`
    - `Get-Service | Format-List -Property DisplayName,  
      StartType`
  - Format-Table
    - Accept list of properties
    - `Get-Service | Format-Table`
    - `Get-Service | Format-Table -Property *`
    - `Get-Service | Format-Table -Property DisplayName,
      StartType, Status`
    - Autosize and wrap
      - Autosize
        - Calculate column widths based on the actual data
        - Assumes that the nearer a property is to the  
          beginning of the property list, the more important  
          it is
      - Wrap
        - Data will wrap within its display column
      - Results vary, experiment
      - Specify the smallest data first
    - Grouping and sorting output
      - `Get-Service | Format-Table -Property DisplayName,
        StartType, Status -GroupBy StartType`
      - `Get-Service | Sort-Object -Property StartType |  
        Format-Table -Property DisplayName, StartType, Status  
        -GroupBy StartType`
      - `Get-Service | Sort-Object -Property StartType,  
        DisplayName | Format-Table -Property DisplayName,  
        StartType, Status -GroupBy StartType`
