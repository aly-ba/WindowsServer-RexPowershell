$Dossier = Get-ChildItem "h:\*.docx"
 
$Word = New-Object -ComObject Word.Application
 

Foreach ($Fichier in $Dossier) 
{
    #Ouvrir Word
    $Doc = $Word.Documents.Open($Fichier.FullName)
 
    #Remplacer l'extension docx par l'extension pdf
	$Nom = ($Doc.FullName).Replace("docx","pdf")
 
    #Enregistrer le fichier en tant que PDF
    $Doc.SaveAs($Nom, 17)
    $Doc.Close()
    
}

$Word.Quit()
