#Compresser un dossier
Compress-Archive -Path H:\ressources -DestinationPath h:\res.zip

#Compresser plusieurs fichiers
Compress-Archive -Path H:\ressources\fichier1.txt, H:\ressources\Fichier_Word.docx -DestinationPath h:\zip

#spécifier le niveau de compression
Compress-Archive -Path H:\ressources\ -DestinationPath h:\test -CompressionLevel Optimal

#mettre à jour un fichier zip
Compress-Archive -Path H:\ressources\fichier2.txt -Update -DestinationPath h:\zip

#Décompresser un fichier zip
Expand-Archive -Path H:\zip.zip -DestinationPath h:\zip


#Rechercher un type fichier
Get-ChildItem h:\ -Include *.txt -Recurse

#Exclure plusieurs termes de la recheche
Get-ChildItem H:\ressources -Exclude *.txt, *.docx -Recurse

#Chercher des fichiers en fonction de leurs tailles - Egale à 1 MB
Get-ChildItem -Path c:\ -Recurse | Where-Object -Property Length -EQ 1MB

#Chercher des fichiers en fonction de leurs tailles - Inférieur à un 1 MB
Get-ChildItem -Path c:\ -Recurse | Where-Object -Property Length -LT 1MB

#Chercher des mots clé dans un fichier texte
Select-String -Path h:\ressources\*.txt -Pattern "France"

#Chercher et remplacer des mots dans un fichier
(Get-Content -Path "H:\ressources\test.txt").Replace("noire","jaune") | Set-Content "H:\ressources\test.txt"

#Agir sur les fichiers 
Get-ChildItem -Path c:\ -Recurse -Include *.txt | Where-Object -Property Length -LT 1MB | ForEach-Object {

Copy-Item -Path $_.FullName -Destination h:\test 

}

#Supprimer les fichiers 0 KO
Get-ChildItem -Path h:\test | Where-Object -Property Length -EQ 0KB | ForEach-Object {

Remove-Item -Path $_.FullName

}

#Supprimer les fichiers inférieur ou égal à  de 11KO
Get-ChildItem -Path h:\test | Where-Object -Property Length -LE 11KB | ForEach-Object {

Remove-Item -Path $_.FullName

}

