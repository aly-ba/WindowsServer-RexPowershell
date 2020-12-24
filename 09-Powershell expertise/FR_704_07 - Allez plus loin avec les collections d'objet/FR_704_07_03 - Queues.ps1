#Aller sur : https://docs.microsoft.com/fr-fr/dotnet/api/system.collections.queue?view=netcore-3.1

$queue = New-Object System.Collections.Generic.Queue[String]

$queue.Enqueue("Premier")

$queue.Enqueue("Deuxième")

$queue.Enqueue("Troisième")

$queue.Enqueue("Quatrième")


$queue


$queue.Count


$queue.Peek()


$queue.Contains("Premier")


$queue.Dequeue()
$queue


$queue.Dequeue()
$queue


$Tableau = $queue.ToArray()


$Tableau.GetType()


$Tableau[0]



$queue = New-Object System.Collections.Generic.Queue[String]


$queue.Enqueue("fichier1.txt")
$queue.Enqueue("fichier2.txt")
$queue.Enqueue("fichier3.txt")
$queue.Enqueue("fichier4.txt")

while ($queue.Count -gt 0) {


    $Fichier = $queue.Dequeue()
    Start-Sleep -Seconds 2
    Compress-Archive $Fichier -DestinationPath "$($fichier).zip"

}