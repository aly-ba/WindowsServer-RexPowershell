Filename: techskills-powershell-scripting-4-2-1-writing-another-script  
Show Name: PowerShell Scripting  
Topic Name: Scripts    
Episode Name: Writing Another Script  
Description: In this episode, we will continue to look at writing PowerShell  
scripts. We will again use the process of taking an everyday task, and writing a  
script that will help automate the task.  
Keywords: [keyword1,keyword2,keyword3]  

---

### Writing Another Script

* Initial cmdlet

`Get-ChildItem`

* Set path

`Get-ChildItem -path C:\Scripts`

* Choose path

```
param(
    [string]$path
)
Get-ChildItem -path $path
```
* Filter by modified date

```
param(
    [string]$path
)
Get-ChildItem -path $path | where LastWriteTime -LT 11/10/17
```
* Choose date

```
param(
    [string]$path,
    [datetime]$date
)
Get-ChildItem -Path $path | where LastWriteTime -LT $date
```
* Use days instead of date

```
param(
    [string]$path,
    [int]$days
)
Get-ChildItem -Path $path |
where LastWriteTime -LT ((Get-Date).AddDays(-$days))
```
* Add message

```
param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | where LastWriteTime -LT $date

"`n The following " + $a.Length + " file(s) have not been modified since " + $date
$a
```
* Fix message

```
param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | where LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a
```
* Archive files

```
param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | where LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a
$a | Move-Item -Destination C:\Archive
```
* Add confirmation prompt

```
param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | where LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a

if ($filecount -gt 0){
    $answer = Read-Host "`n Archive file(s)? Yes or No"

    while("yes","no" -notcontains $answer) {
	$answer = Read-Host "Yes or No"
    }

    switch ($answer){
        "yes" {$a | Move-Item -Destination C:\Archive;"`n Operation Completed"}
        "no" {"`n Operation Canceled"}
    }
}
```
