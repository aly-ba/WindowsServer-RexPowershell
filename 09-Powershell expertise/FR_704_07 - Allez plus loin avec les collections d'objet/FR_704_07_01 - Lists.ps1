#Aller sur la page : https://docs.microsoft.com/fr-fr/dotnet/api/system.collections.generic.list-1?view=netcore-3.1


$liste = New-Object System.Collections.Generic.List[String]


$liste.Add("Paris")
$liste


$liste.AddRange([String[]] ("Marseille","Annecy","Lyon") )
$liste


$liste[0]


$liste[0] = "Lille"
$liste


$liste.Count


$liste.Add("Cannes")
$liste

 
$liste.Insert(0,"Au début")
$liste

 
$liste.Insert(1,"Deuxième")
$liste


$liste.Find({ $args[0] -like 'Par*' })


$liste.FindLast(  { $args[0] -like 'Par*' } )


$liste.Add("Parc")
$liste.FindAll(  { $args[0] -like 'Par*' } )


$liste.FindIndex( { $args[0] -like 'Par*' } )


$liste.FindLastIndex( { $args[0] -like 'Par*' } )


$liste.Contains("Paris")


$liste.Reverse()
$liste


$liste.Sort()
$liste


$liste.Remove("Paris")
$liste


$liste.RemoveAt(0)
$liste


$liste.RemoveAll( { $args[0] -like 'Par*' } )
$liste


$liste.Clear()
$liste

#Plus d'info : https://docs.microsoft.com/fr-fr/dotnet/api/system.collections.generic.list-1.add?view=netcore-3.1


$liste = New-Object System.Collections.Generic.List[String]


$liste.add("fichier1.txt")
$liste.add("fichier2.txt")
$liste.add("fichier3.txt")
$liste.add("fichier4.txt")

foreach($fichier in $liste.GetEnumerator())
{

    $Fichier = $fichier

    Start-Sleep -Seconds 2
    Compress-Archive $fichier -DestinationPath "$($fichier).zip"

}


$liste = New-Object System.Collections.Generic.List[String]

$Fichier = (Get-ChildItem h:\).Name

foreach($element in $fichier)
{
        
    $liste.Add($element)
    
}


$liste


$liste.Count


$liste.FindAll(  { $args[0] -like 'Doc*' } )