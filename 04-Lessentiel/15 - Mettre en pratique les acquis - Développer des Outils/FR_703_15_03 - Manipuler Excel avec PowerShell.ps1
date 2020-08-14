#Instancier un objet Excel
$Excel = New-Object -ComObject excel.application
$Excel.Visible = $true

$Excel.DisplayAlerts = $false

#Ajouter un classeur
$classeur = $excel.workbooks.add()

#Renommer la feuille
$classeur.Worksheets.Item(1).Name = "PowerShell"

#Modifier une cellule
$cellule = $classeur.Worksheets.Item(1)
$cellule.cells.Item(1,1) = "Nom"
$cellule.cells.Item(1,2) = "Prenom"
$cellule.cells.Item(1,3) = "Dated'Embauche"
$cellule.cells.Item(1,4) = "Type de contrat"

$cellule.cells.Item(2,1) = "Jean"
$cellule.cells.Item(2,2) = "Dubois"
$cellule.cells.Item(2,3) = "20/05/2015"
$cellule.cells.Item(2,4) = "CDD" 

#Donner une couleur aux cellules

for($i = 0; $i -ne 5; $i++)
{
      #Donner une couleur aux cellules    
      $cellule.cells.Item(1,$i).interior.colorindex = 10

      #Couleur au text
      $cellule.cells.Item(1,$i).font.ColorIndex = 2

      #Mettre en gras
      $cellule.cells.Item(1,$i).font.bold = $True

      #Centrer le texte
      #https://docs.microsoft.com/fr-fr/office/vba/api/excel.xlhalign
      $cellule.cells.Item(1,$i).HorizontalAlignment = -4108



}


#Récuperer la valeur d'une cellule
$cellule.Cells.item(1,1).text


#Enregistrer le fichier excel
$classeur.SaveAs("h:\test.xlsx")

#Quitter excel
$Excel.Quit()

#Toutes les propriétés et méthodes
https://docs.microsoft.com/fr-fr/office/vba/api/excel.cellformat
