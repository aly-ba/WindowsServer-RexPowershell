$SMTPServer = "outlook.office365.com"
$SMTPExpediteur = "sender@lds.fr"
$SMTPDestinataire = "my-contact@domain.fr"
$Credentials = Get-Credential
$EmailSubject = "E-mail via Office 365"
$EmailContent = "Bonjour, voici un e-mail envoyé via authentification sur Office 365"


Send-MailMessage -Verbose -SmtpServer $SMTPServer `
   -From $SMTPExpediteur -To $SMTPDestinataire -Credential $Credentials `
   -Subject $EmailSubject `
   -Body $EmailContent -BodyAsHtml -UseSsl -Port 587