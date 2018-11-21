function Get-User
{
    [System.Security.Principal.WindowsIdentity]::GetCurrent()
}

function Is-Administrator
{
    $user = Get-User
    $principal = New-Object `
        Security.principal.windowsprincipal($user)
    $principal.IsInRole("Administrators")
}

Is-Administrator


#rename to prompt to use as a real prompt
function username_prompt
{
    $user = (Get-User).Name
    $path = Get-Location
    "[$user] $path> "
}

username_prompt
#rename to prompt user to use a real prompt

function unix_prompt {
    $path=Get-Location
    $terminator ='$'
    if((Is-Administrator)) {
        $terminator ="#"

    }

    "$path$terminator"
}

unix_prompt
#rename to pompt to use as areal prompt
function color_prompt
{
    Write-Host("$(get-location)>") -nonewline `
            -foregroundcolor Yellow
            return ""
}
color_prompt

function prompt {
    $user =(Get-User).Name
    $path=Get-Location
   $host.UI.RawUI.WindowTitle = $path
    "[$user]> "
}
prompt