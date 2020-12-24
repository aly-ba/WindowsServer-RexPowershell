function Test-NombreArgument
 {
  [CmdletBinding()]
  param (

  [ValidateCount(1, 3)]

  [String[]]$test

  )
 
}


Test-NombreArgument -test "ok", "non", "ok"




function Test-TailleArgument 
{
  [CmdletBinding()]
  param (
  [ValidateLength(2, 5)]
  [String]$test
  )
}

Test-TailleArgument -test "aaaaa"




function Test-ValideArgument 
{
  [CmdletBinding()]
  param (
  [ValidateSet("PowerShell","Python", "Bash")]
  [String]$test
  )

}



Test-ValideArgument -test "Python"




function Test-Intervalle 
{
  [CmdletBinding()]
  param (
  [ValidateRange(10, 25)]
  [Int]$test
  )

}

Test-Intervalle -test 9