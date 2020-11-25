Filename: microsoft-server70742-4-1-3-install-and-configure-certificate-services-pt3  
Show Name: Identity with Windows Server 2016 (70-742)
Topic Name: Implement Active Directory Certificate Services
Episode Name: Install and Configure Certificate Services Pt 3
Description: In this episode, Aubri and Mike continue demonstrating a Public  
Key Infrastructure. They configure the subordinate CA and prepare it to issue  
certificates.

---
### 4.1 Install and Configure Certificate Services Pt 3

* Install Active Directory Integrated Enterprise Certificate Authority (CA)
* Install offline root and subordinate CAs
* Install standalone CAs
* Configure Certificate Revocation List (CRL) distribution points

```
corp-svr01
  Create c:\pki on corp-svr01
  Grant read\write to CertPublishers
  Open IIS console
  Expand Sites -> right-click Default Web Site -> Add Virtual Directory
    Alias = pki
    Physical path = C:\pki
  Connections pane -> pki -> Authentication
    Edit Permissions
    Grant Anonymous logon; everyone access to pki virtual directory
  pki Home -> Request Filtering
  File Name Extensions -> Edit Feature Settings -> Allow double escaping
  Restart IIS
```
```
Corp-dc01
  Create a cname record "pki" for corp-svr01
```
```
On rootCA
Copy CAPolicy.inf from Documents to C:\
Install CA Role
Configure as Standalone root CA

Add CDP
http://pki.corp.itpro.tv/pki/<CaName><CRLNameSuffix><DeltaCRLAllowed>.crl
Publish CRLs to this location
Publish Delta CRLs to this location

Add AIA
http://pki.corp.itpro.tv/pki/<ServerDNSName>_<CaName><CertificateName>.crt
Include in the AIA of issued certificates

Publish CRL (certutil -crl)
Copy CRL and root certificate to c:\pki
pkiview.msc

```
