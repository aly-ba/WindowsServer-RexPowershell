Filename: techskills-powershell-1-5-1-script-execution-policy  
Show Name: PowerShell  
Topic Name: Introduction to PowerShell  
Episode Name: Script Execution Policy  
Description: In this episode, Mike and Cherokee look at setting  
the script execution policy in PowerShell. They discuss the  
various policies available and explain what they mean. They  
also look at script execution policy scope.
Keywords: [keyword1,keyword2,keyword3]  

---

### Script Execution Policy

* The execution policy controls script behavior
  - `Get-ExecutionPolicy` to see the current policy
  - Four policies can be applied `Set-ExecutionPolicy <PolicyName>`
  	- *Restricted*
        - Default execution policy in Windows 8, Windows Server  
          2012, and Windows 8.1
        - Permits individual commands, but will not run scripts
        - Prevents running of all script files, including
          - Formatting and configuration files (.ps1xml)
          - Module script files (.psm1)
          - Windows PowerShell profiles (.ps1)
  	- *All Signed*
        - Scripts can run
        - Requires that all scripts and configuration files be  
          signed by a trusted publisher
        - Includes scripts written on the local computer
        - Prompts you before running scripts from publishers  
          not yet classified as trusted or untrusted
        - Risks running signed, but malicious, scripts
  	- *Remote Signed*
        - Scripts can run
        - Default execution policy in Windows Server 2012 R2
        - Requires a digital signature from a trusted publisher  
          on scripts and configuration files that are downloaded  
          from the Internet
          - Includes e-mail and instant messaging programs
        - Does not require digital signatures on scripts written  
          on the local computer
        - Unsigned scripts downloaded from the Internet can be  
          unblocked
          - `Unblock-File`
  	- *Unrestricted*
        - Unsigned scripts can run
        - Warns the user before running scripts and configuration  
          files downloaded from the Internet  

    - *Bypass*
        - Nothing is blocked
        - No warnings or prompts
        - Used when
          - Script is built into a larger application
          - Configuration for a program that has its own  
            security model
    - *Undefined*
      - No execution policy set in the current scope
      - If the execution policy in all scopes is Undefined,  
        the effective execution policy is Restricted
      - Default execution policy
  - Execution policy scope
    - `Get-ExecutionPolicy -List`
    - Execution policy has five scopes (in precedence order)  
      - Group Policy: Computer Configuration
      - Group Policy: User Configuration
      - Execution Policy: Process
        `powershell.exe -ExecutionPolicy Unrestricted`
      - Execution Policy: CurrentUser
      - Execution Policy: LocalMachine
    - `Set-ExecutionPolicy <PolicyName> -Scope <scope>`
`Administrative Templates\Windows Components\Windows PowerShell`
