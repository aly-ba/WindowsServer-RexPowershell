$Pile = New-Object System.Collections.Generic.Stack[String]


$pile.Push("Premier Objet")

$pile.Push("Deuxième Objet")

$pile.Push("Troisième Objet")

$pile.Push("Quatrième Objet")


$Pile


$Pile.Count


$pile.Peek()


$pile.Contains("Deuxième Objet")


$Pile.Pop()


$Pile


$Pile.Clear()


$Tableau = $Pile.ToArray()


$Tableau.GetType()


$Tableau[0]



$Pile = New-Object System.Collections.Generic.Stack[String]



$Pile.Push("fichier1.txt")
$Pile.Push("fichier2.txt")
$Pile.Push("fichier3.txt")
$Pile.Push("fichier4.txt")

while ($Pile.Count -gt 0) {


    $Fichier = $Pile.Pop()
    Start-Sleep -Seconds 2
    Compress-Archive $Fichier -DestinationPath "$($fichier).zip"

}