#Aller sur : https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms?view=netcore-3.1

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms.form?view=netcore-3.1
$Fenetre = New-Object system.Windows.Forms.Form 



$Fenetre.Width = "640"
$Fenetre.Height = "330"
$Fenetre.Text = "Démonstration"
$Fenetre.MaximizeBox = $false


$BoutonQuitter = New-Object System.Windows.Forms.Button 
$BoutonQuitter.Text = "Quitter"
$BoutonQuitter.Location = New-Object System.Drawing.Point(440,250)
$Fenetre.Controls.Add($BoutonQuitter)


$BoutonQuitter.Add_Click(
    {    
    
        $Fenetre.Close()
    }

)


$Date = (Get-Date).ToShortDateString()
$Heure = (get-date).ToShortTimeString()
$DateHeure = New-Object System.Windows.Forms.Label
$DateHeure.Location = New-Object System.Drawing.Point(10,10)
$DateHeure.AutoSize = $true
$DateHeure.Text = "Nous sommes le $($date) et il est $($heure)"
$Fenetre.Controls.Add($DateHeure)


$ZoneTexte = New-Object System.Windows.Forms.TextBox
$ZoneTexte.Location = New-Object System.Drawing.Point(10,40)
$ZoneTexte.Width = "250"
$ZoneTexte.Text = "Entrer le nom d'une commande à exécuter"
$Fenetre.Controls.Add($ZoneTexte)


$BoutonExecuter = New-Object System.Windows.Forms.Button 
$BoutonExecuter.Text = "Exécuter"
$BoutonExecuter.Location = New-Object System.Drawing.Point(270,40)
$Fenetre.Controls.Add($BoutonExecuter)


$BoutonExecuter.Add_Click(

    {
        Start-Process $ZoneTexte.Text
    }

)


$Question = New-Object System.Windows.Forms.Label
$Question.Location = New-Object System.Drawing.Point(10,80)
$Question.AutoSize = $true
$Question.Text = "Quelles applications souhaitez-vous ouvrir ?"
$Fenetre.Controls.Add($Question)


$BlocNote = New-Object System.Windows.Forms.CheckBox 
$BlocNote.Text = "Bloc-Note"
$BlocNote.Location = New-Object System.Drawing.Point(15,100)
$Fenetre.Controls.Add($BlocNote)


$Calculatrice = New-Object System.Windows.Forms.CheckBox 
$Calculatrice.Text = "Calculatrice"
$Calculatrice.AutoSize = $true
$Calculatrice.Location = New-Object System.Drawing.Point(15,120)
$Fenetre.Controls.Add($Calculatrice)


$ExecuterApp = New-Object System.Windows.Forms.Button 
$ExecuterApp.Text = "Exécuter"
$ExecuterApp.Location = New-Object System.Drawing.Point(10,150)
$Fenetre.Controls.Add($ExecuterApp)


$ExecuterApp.Add_Click(
  
     {
         if($BlocNote.Checked)
         {
             start-process notepad
         }

         if($Calculatrice.Checked)
         {
             start-process calc
         }
     }

)


$Fenetre.ShowDialog()


