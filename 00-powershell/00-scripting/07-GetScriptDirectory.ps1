function Get-ScriptDirectory {
    $invocation  =$script:myInvocation
    Split-Path $invocation.MyCommand.Path
}

Write-Host (Get-ScriptDirectory)
