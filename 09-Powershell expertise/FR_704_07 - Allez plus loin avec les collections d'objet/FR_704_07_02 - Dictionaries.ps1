#Aller sur : https://docs.microsoft.com/fr-fr/dotnet/api/system.collections.generic.dictionary-2?view=netcore-3.1


$dictionnaire = New-Object System.Collections.Generic.Dictionary"[String,String]"


$dictionnaire.Add("Pays", "France")
$dictionnaire.Add("Ville", "Paris")
$dictionnaire.Add("CodePostale", "75016")


$dictionnaire.Count


$dictionnaire


$dictionnaire.Pays


$dictionnaire.Pays = "Allemagne"
$dictionnaire


$dictionnaire.ContainsKey("Pays")


$dictionnaire.ContainsValue("75016")


$dictionnaire.Keys


$dictionnaire.Values


$dictionnaire.Remove("Pays")
$dictionnaire


$dictionnaire.Clear()
$dictionnaire


$dictionnaire = New-Object System.Collections.Generic.Dictionary"[String,String]"

$dictionnaire.Add("txt", "notepad.exe")
$dictionnaire.Add("bmp", "paint.exe")
$dictionnaire.Add("dib", "paint.exe")
$dictionnaire.Add("rtf", "wordpad.exe")
$dictionnaire.Add("docx", "word.exe")



try
{
    $dictionnaire.Add("txt", "winword.exe");
}
catch
{
    Write-Error ("Un élément avec une clé TXT existe déjà");
}




foreach($element in $dictionnaire.GetEnumerator())
{

    "Les fichiers portant l'extension $($element.Key) s'ouvriront avec l'application $($element.value)"
}