
# Crée le compte machine du Nano serveur dans l'Active Directory
Djoin /provision /domain corp.lan /machine nano1 /savefile c:\nano1

# Intégration du server Nano1 au domaine en mode hors connexion
# 1) Transferer le fichier "nano1" sur le serveur Nano1
# 2) Ouvrir une connexion Powershell Direct sur le server Nano1
Djoin /requestodj /loadfile c:\nano1 /windowspath c:\Windows /localos

