#Cr�er un tableau associatif
$serveurs = @{serveur_marseille = "192.168.10.100"; serveur_paris = "172.16.10.10"; serveur_lyon = "10.10.10.10" }

#R�cup�rer le type
$serveurs.GetType()

#Respecter l'ordre du tableau
$serveurs = [ordered]@{serveur_marseille = "192.168.10."; serveur_paris = "172.16.10.10"; serveur_lyon = "10.10.10.10" }

#Le nombre d'objet dans un tableau
$serveurs.Count

#R�cup�rer la valeur d'une cl�
$serveurs.serveur_marseille
write-host "L'adresse IP du serveur Marseille est : $($serveurs.serveur_marseille)"

#Afficher toutes les cl�s
$serveurs.Keys

#Afficher toutes les valeurs
$serveurs.Values

#Recup�rer les cl�s et les valeurs
$serveurs.GetEnumerator()

#Ajouter une cl� et sa valeur
$serveurs.Add("serveur_annecy", "192.168.20.58")
$serveurs

#Supprimer une cl�
$serveurs.Remove("serveur_annecy")
$serveurs
