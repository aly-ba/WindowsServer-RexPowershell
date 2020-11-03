#forcer le type chaine de caractère
[string]$site = "alphorm.com"
write-host $site

#récupérer la taille de la chaine
[string]$site = "alphorm.com"
write-host $site.Length

#récupérer l'index d'un caractère
[string]$site = "alphorm.com"
write-host $site.IndexOf("a")

#remplacer un caractère par un autre
[string]$site = "alphorm.com"
write-host $site.Replace("com","fr")

#récupérer des caractères se trouvant entre index
[string]$site = "alphorm.com"
write-host $site.Substring(0,5)

#est ce que la chaine de caractère commence par tel caractères
[string]$site = "alphorm.com"
write-host $site.StartsWith("a")

#est ce que la chaine de caractère se termine par tel caractères
[string]$site = "alphorm.com"
write-host $site.EndsWith("com")

#insérer un caractère à tel index
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

#Nettoyer les espaces au début
[string]$site = "    alphorm.com   " 
write-host $site.TrimStart()

#Nettoyer les espaces à la fin
[string]$site = "    alphorm.com   " 
write-host $site.TrimEnd()

#représenter un caractère
[char]$lettre = "a"
Write-Host $lettre