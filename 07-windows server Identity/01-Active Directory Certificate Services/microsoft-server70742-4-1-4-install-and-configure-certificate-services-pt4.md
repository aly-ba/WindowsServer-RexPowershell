Filename: microsoft-server70742-4-1-4-install-and-configure-certificate-services-pt4  
Show Name: Identity with Windows Server 2016 (70-742)  
Topic Name: Implement Active Directory Certificate Services  
Episode Name: Install and Configure Certificate Services Pt 4  
Description: In this episode, Aubri and Mike demonstrate configuring an Online  
Responder to support a PKI. They install the role service and then create a  
revocation configuration.

---
### 4.1 Install and Configure Certificate Services Pt 4

* Install and configure Online Responder
  - Online Certificate Status Protocol
  - Add new AIA location
    - http://pki.corp.itpro.tv/ocsp
    - Check Include in the OSCP extension
  - Configure OCSP Response signing certificate template
    - Duplicate template
    - Grant corp-svr01 read, enroll and auto-enroll
    - Publish template
  - Install role service
  - Create a Revocation Configuration
    - Open Online Responder console
    - Add Revocation Configuration
  - Test configuration
    - Issue certificate
      - Check details of certificate for AIA location
    - Export certificate
      - certutil -url <path to exported cert>
      - Status verified, type OSCP
    - Revoke certificate, publish crl
      - certutil -url <path to exported cert>
      - Status revoked, type OSCP
