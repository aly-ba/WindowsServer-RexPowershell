trap [System.Management.Automation.PSInvalidCastException]
{
        Whirte-Host "Error converting a string to date!"
        $realException = $_.Exception.InnerException

}

Write-Host "String begin"

