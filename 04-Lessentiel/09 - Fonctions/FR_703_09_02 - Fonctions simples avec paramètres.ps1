#Function avec paramètre
function EnvoiProcess-VersFichier ()
    {
    param([string]$Chemin)

    Get-Process | Out-File $Chemin

    }

#Appeler la fonction avec paramètre
EnvoiProcess-VersFichier -Chemin h:\process.txt