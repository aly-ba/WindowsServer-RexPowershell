#Powershell reconnait automatiquement le type
$Age = 1
$age.GetType()


#Un chiffre entre guillement devient une chaine de caractère
$Age = "1"
$age.GetType()
$age + 5
$age

#Forcer les types numériques
[int]$age = 20
write-host $age
$age.GetType()

#type long
[long]$kilometrage = 150000
write-host $kilometrage
$kilometrage.GetType()

#type double 
[double]$prix = 25.14
$prix.GetType()
write-host $prix

#personnaliser l'affichage avec l'opérateur de format en rajoutant des zéros
$nombre = 589
"{0:000000}" -f $nombre

#arrondir un nombre
$nombre = 589.78
"{0:#}" -f $nombre

#Représenter un hexadécimal
$valeur = 255
"{0:x}" -f $valeur

#Représenter un pourcentage
$valeur = 0.30
"{0:p}" -f $valeur

#Un Kilo octects
1KB

#Un Mega octect
1MB

#Un gigaoct
1GB

#Un Tera Octet
1TB

#Un Peta Octet
1PB