Get-ExecutionPolicy


Set-ExecutionPolicy AllSigned


Get-ChildItem Cert:\CurrentUser\My\ -CodeSigningCert


$certificat = (Get-ChildItem Cert:\CurrentUser\My\ -CodeSigningCert)


Set-AuthenticodeSignature -Certificate $certificat -FilePath test.ps1

