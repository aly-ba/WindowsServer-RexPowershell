$applicationLog = Get-WmiObject Win32_NTEventLogFile ` 
                         -filter "LogFileName= 'Application'" `
                         -computer NULL
$starRecord =  $applicationLog.NumberOfRecord - 10
$filter ="LogFile ='Application' AND RecordNumber > $starRecord"

Get-WmiObject Win32_NTLogEvent -filter $filter `
                    -computer NULL | `
                    sort TimeGenerated -Descending
