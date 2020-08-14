#Tableau indexé
$Chemin_Apps = "c:\windows\write.exe","c:\windows\regedit.exe","c:\windows\notepad.exe"

#Type
$Chemin_Apps.GetType()

#Récupérer le tableau avec get-item
get-item $chemin_apps

#Récupérer la propriété creationtime
(get-item $Chemin_Apps).CreationTime

#Connaitre la taille du tableau
$Chemin_Apps.Count

#Afficher tout le tableau
$Chemin_Apps

#Afficher une valeur du tableau en récupérant l'indice
$Chemin_Apps[0]
$Chemin_Apps[1]
$Chemin_Apps[2]

#Afficher une valeur du tableau en récupérant plusieurs indices
$Chemin_Apps[0,1]


#Utilisez la méthode foreach
$Chemin_Apps.ForEach('ToUpper')

#Modifier une valeur
$Chemin_Apps[0] = "c:\windows\explorer.exe"
$Chemin_Apps[0]

#Modifier une valeur avec la méthode setvalue
$Chemin_Apps.SetValue("c:\windows\write.exe", 0)
$Chemin_Apps

#Récupérer l'index d'une valeur, ou d'un objet
$Chemin_Apps.IndexOf("c:\windows\explorer.exe")


#Récupérer une valeur avec la méthode get
$Chemin_Apps.Get(1)


#Montrer comment accéder aux propriétés méthodes de chaque objet
$Chemin_Apps[0].Length

#Accès méthodes de chaque objet
$Chemin_Apps[0].Replace("c:", "h:")

#Modifier définitivement le tableau
$Chemin_Apps[0] =  $Chemin_Apps[0].Replace("c:", "h:")


#Un tableau peut avoir des valeurs de plusieurs types
$Tab = "Paris",75010,"A"

#récupérer le dernier élément d'un tableau
$Tab[-1]

