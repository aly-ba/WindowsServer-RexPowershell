#function avec paramétre
function EnvoiProcess-VersFichier() {
    param([string]$chemin)
    Get-Process | Out-File $chemin
}

#Appeler la fonction avec paramètre
EnvoiProcess-VersFichier -Chemin F:\process.txt