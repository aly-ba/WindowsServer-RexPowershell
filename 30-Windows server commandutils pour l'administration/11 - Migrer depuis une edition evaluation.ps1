### Commande DISM de migration de licence

### Valider les versions vers lequelles il est possible de migrer
Dism /Online /Get-TargetEditions

### Migration vers une version commerciale
DISM /Online /Set-Edition:ServerDatacenter /ProductKey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX /AcceptEula
