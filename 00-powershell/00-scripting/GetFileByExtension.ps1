#file with extension point mp3
#we can try it with others extension
$where = $arg[0]
$what  = $args[1]

if( !what -match "\.mp3$")
{
}

Get-ChildItem $where $what -Recurse

