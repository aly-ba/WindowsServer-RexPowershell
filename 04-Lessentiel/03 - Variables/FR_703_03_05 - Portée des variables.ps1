#Variable portée parent
$ville = "paris"

#Fonction pour lire la variable de portée parent depuis la portée enfant
function test
{

  write-host $ville
 

}


#Variable portée enfant inaccessible depuis la portée parent
function test
{

  $pays = "France"

  write-host $pays

}
