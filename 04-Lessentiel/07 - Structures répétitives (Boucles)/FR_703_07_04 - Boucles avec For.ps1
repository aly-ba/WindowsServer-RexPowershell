#Boucle for

$tableau = "Paris", "Marseille", "Lyon"

for($index = 0; $index -lt $tableau.count ; $index++)
{

     Write-Host "A l'index $($index), on retrouve l'objet $($tableau[$index])"

}