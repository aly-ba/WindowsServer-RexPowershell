$Date = (get-date).ToShortDateString()
$Heure = (get-date).ToShortTimeString()




Export-ModuleMember -Variable date,heure -Function Nouveau-FichierTemporaire, Test-Extension, Recupere-ExtensionFichier