#https://docs.microsoft.com/fr-fr/dotnet/api/system.windows.forms?view=netcore-3.1


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

$labelCarteReseau = New-Object System.Windows.Forms.Label
$labelCarteReseau.Location = New-Object System.Drawing.Point(10,180)
$labelCarteReseau.AutoSize = $true
$labelCarteReseau.Text = "Liste des cartes réseaux : "
$Fenetre.Controls.Add($labelCarteReseau)


$ListeCarteReseau = New-Object System.Windows.Forms.ComboBox 
$ListeCarteReseau.Location = New-Object System.Drawing.Point(15,205)
$Fenetre.Controls.Add($ListeCarteReseau)


$CarteDispo = (Get-NetAdapter | Where-Object {$_.Name -notlike "VM*"  } ).Name

foreach($element in $CarteDispo)
{
 
      $ListeCarteReseau.Items.Add($element)
      
}


$AddresseIP = New-Object System.Windows.Forms.Label
$AddresseIP.Location = New-Object System.Drawing.Point(10,240)
$AddresseIP.AutoSize = $true
$AddresseIP.Text = "Addresse IP de la carte sélectionnée : "
$Fenetre.Controls.Add($AddresseIP)

$ListeCarteReseau.Add_SelectedValueChanged( {
  
$RecupIP =  (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias $ListeCarteReseau.Text ).IPAddress

$AddresseIP.Text = "Addresse IP de la carte sélectionnée : $($recupIP) "

}

)




$Liste = New-Object System.Windows.Forms.ListBox
$Liste.Location = New-Object System.Drawing.Point(370,20)
$Liste.Width = 150
$Liste.Height = 200

$RecupFichiers = Get-ChildItem h:\

foreach($element in $RecupFichiers)
{
   $Liste.items.Add($element)

}

$liste.Add_DoubleClick(
   
{
    
    #Start-process $Liste.SelectedItem

    #MessageBox avec la date de créatin du fichier
    $DateFichier = (Get-Item $Liste.SelectedItem).CreationTime
    [System.Windows.Forms.MessageBox]::Show("Le fichier sélectionné a été crée le $($Datefichier)", "Informations Fichier")

}
)

$Fenetre.Controls.Add($Liste)


$Image = New-Object System.Windows.Forms.PictureBox
$Image.Location = New-Object System.Drawing.Point(540,10)
$Image.Width = 100
$Image.Height = 100
$image.image = [system.drawing.image]::FromFile("H:\powershell.png")
$Fenetre.Controls.Add($Image)




$BarreEtat = New-Object System.Windows.Forms.StatusBar
$BarreEtat.Text = (get-date).ToShortDateString()
$Fenetre.Controls.Add($BarreEtat)


$Fenetre.ShowDialog()


