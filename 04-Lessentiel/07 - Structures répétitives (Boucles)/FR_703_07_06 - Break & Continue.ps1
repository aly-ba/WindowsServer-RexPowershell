
#break
while($Nombre -lt 10)
{
    $Nombre++

    if($Nombre -eq 5)
    {
       write-host "Sorti de la boucle"
       break
    }
	
	  write-host $Nombre

}



#continue
while($Nombre -lt 10)
{
   $Nombre++

   if($Nombre -eq 5)
    {
       write-host "On saute !"
       continue
    }

    write-host $Nombre

}