#notes :
#dir classique affiche la liste des repertoire 
dir|foreach -begin {$sum =0 } -process {$num += $_.Lenght } -end  {echo "Total :" 