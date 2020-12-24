#Aller sur : https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms?view=netcore-3.1


Add-Type -AssemblyName System.Windows.Forms


Add-Type -AssemblyName System.Drawing


#https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms.form?view=netcore-3.1
$Fenetre = New-Object system.Windows.Forms.Form 


$Fenetre.Width = "640"
$Fenetre.Height = "330"
$Fenetre.Text = "Démonstration"
$Fenetre.MaximizeBox = $false




$Fenetre.ShowDialog()


