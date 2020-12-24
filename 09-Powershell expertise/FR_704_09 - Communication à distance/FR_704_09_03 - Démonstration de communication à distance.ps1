Get-NetTCPConnection -LocalPort 5985


Get-Service WinRM


Enable-PSRemoting


Get-NetTCPConnection -LocalPort 5985


Get-Service WinRM


Test-WSMan -ComputerName client-01


Enter-PSSession -ComputerName client-01


New-Item -Path c:\ -Name test.txt -Value "Test communication à distance"
Remove-Item -Path c:\test.txt


Exit-PSSession




Invoke-Command -ComputerName client-01 -ScriptBlock {

     while($nombre -ne 10)
     {
         $nombre++
         New-Item -Path c:\ -Name "Fichier_$($nombre).txt"
     }

}


$Session = New-PSSession -ComputerName client-01 -Name test


Get-PSSession



Invoke-Command -Session $Session -ScriptBlock {

    while($nombre -ne 10)
    {
        $nombre++
        New-Item -Path c:\ -Name "Fichier_$($nombre).txt"
    }

}


Remove-PSSession -Name test

get-pssession