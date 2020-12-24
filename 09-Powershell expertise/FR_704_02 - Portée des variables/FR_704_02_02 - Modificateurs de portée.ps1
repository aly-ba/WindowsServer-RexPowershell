
$global:var_test = "Bonjour"



$var_global = "Je suis global"
function test 
{
    $var_global = "Modifié depuis locale"
 
}


$var_global = "Je suis global"
function test 
{
    $global:var_global = "Modifié depuis la portée locale"
   
}




$var_global


$var_privee = "variable privée"
function test
{
    
    write-host $var_privee
}


$var_privee = "variable privée"
function test
{
   write-host $private:var_privee
}



Function test-script
{
 
    $var_script = "Portée script"

}


Function test-script
{
 
    $script:var_script = "Portée script"

}

