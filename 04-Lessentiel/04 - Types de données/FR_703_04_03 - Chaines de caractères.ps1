#forcer le type chaine de caract�re
[string]$site = "alphorm.com"
write-host $site

#r�cup�rer la taille de la chaine
[string]$site = "alphorm.com"
write-host $site.Length

#r�cup�rer l'index d'un caract�re
[string]$site = "alphorm.com"
write-host $site.IndexOf("a")

#remplacer un caract�re par un autre
[string]$site = "alphorm.com"
write-host $site.Replace("com","fr")

#r�cup�rer des caract�res se trouvant entre index
[string]$site = "alphorm.com"
write-host $site.Substring(0,5)

#est ce que la chaine de caract�re commence par tel caract�res
[string]$site = "alphorm.com"
write-host $site.StartsWith("a")

#est ce que la chaine de caract�re se termine par tel caract�res
[string]$site = "alphorm.com"
write-host $site.EndsWith("com")

#ins�rer un caract�re � tel index
[string]$site = "alphorm.com"
write-host $site.Insert(0,"a")

#Mettre tout en majuscule
[string]$site = "alphorm.com"
write-host $site.ToUpper()

#Mettre tout en minuscule
[string]$site = "alphorm.com"
write-host $site.ToLower()

#Nettoyer les espaces
[string]$site = "    alphorm.com   " 
write-host $site.Trim()

#Nettoyer les espaces au d�but
[string]$site = "    alphorm.com   " 
write-host $site.TrimStart()

#Nettoyer les espaces � la fin
[string]$site = "    alphorm.com   " 
write-host $site.TrimEnd()

#repr�senter un caract�re
[char]$lettre = "a"
Write-Host $lettre
