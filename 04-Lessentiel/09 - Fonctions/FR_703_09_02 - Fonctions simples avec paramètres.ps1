#Function avec param�tre
function EnvoiProcess-VersFichier ()
    {
    param([string]$Chemin)

    Get-Process | Out-File $Chemin

    }

#Appeler la fonction avec param�tre
EnvoiProcess-VersFichier -Chemin h:\process.txt