

enum formations
{
   PowerShell
   Terraform
   AWS
}


[formations].GetEnumNames()


[formations].GetEnumName(1)


[int][formations]::AWS


foreach($element in [formations].GetEnumNames())
{

    [int][formations]::$element
}



enum formations_
{
   PowerShell = 35
   Terraform = 38
   AWS

}


[formations_].GetEnumName(35)


foreach($element in [formations_].GetEnumNames())
{

    [int][formations_]::$element
}


enum Langage
{
    PowerShell
    Python
    Bash
}

function Type-Langage 
{
  [CmdletBinding()]
  param
  (
  [Langage]$ChoixLangage
  )

  "Vous avez choisi $($ChoixLangage)"

}

Type-Langage -choixlangage ddd

Type-Langage -choixlangage PowerShell
