#Function sans paramétre
function  Recupere-DateCourte
{
    (get-Date).ToShortDateString()
}

#Appeler la Fonction 
$recup =  Recupere-DateCourte
Write-host $recup