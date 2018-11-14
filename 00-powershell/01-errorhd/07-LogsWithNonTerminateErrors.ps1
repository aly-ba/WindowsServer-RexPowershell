trap {
    continue
}

Write-Host "setting error baseline"
$initialErrorCount = $error.count

$denominator = 0
4/$denominator

#renvoie le result sur la var $null
del nosuchfile.txt 2> $null

$errorCount = $erro.count - $initialErrorCount

