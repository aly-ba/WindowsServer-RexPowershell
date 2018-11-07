#GET-ExecutionPolicy
#types 
#Getting the Type
(42).getType()
"Hello, World".GetType()
(1,2,3).GetType()
#properties
"Hello".Length
#"HEllo".Length=5
$fruit ="apples","oranges"
$fruit[0]

#methodes
"Hello".Contains("Hello")
"uppecase, please".ToUpper()

#adapters
(Get-WmiObject win32_process)[0].PSBase.properties["Caption"].Value

$user =[ADSI]"WinNT://./Hristo,user"
$user.PSBase.Properties["Name"]
$user.Name
#lire un fichier xml
$ds= New-Object Data.DataSet
$ds.ReadXML("C:\PowerShell\data.xml")
ds.Tables[0].Rows[0]

$xmlDoc = New-Object Xml.XmlDocument
$xmlDoc.Load("C:\PowerShell\data")
$xmlDoc.Users.User[0]

#lancer une application
#lancer Inter Explorer

$ie = New-Object -COM InternetExplorer.Application
$ie.Visible =$true