#file with extension point mp3
#we can try it with others extension
$where = $arg[0]
$what  = $args[0]

if( !what -match "\.mp3$")
{
    $what = $what +".mp3"
}

#Get-ChildItem $where $what -Recurse

#Get-ChildItem $where $where2
Get-ChildItem $what




