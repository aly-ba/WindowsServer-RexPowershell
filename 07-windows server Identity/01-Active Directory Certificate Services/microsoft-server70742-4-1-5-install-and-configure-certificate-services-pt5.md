Filename: microsoft-server70742-4-1-5-install-and-configure-certificate-services-pt5  
Show Name: Identity with Windows Server 2016 (70-742)  
Topic Name: Implement Active Directory Certificate Services  
Episode Name: Install and Configure Certificate Services Pt 5  
Description: In this episode, Aubri and Mike discuss how to implement  
administrative role separation. They create the appropriate groups in Active  
Directory and assign permissions. They also demonstrate ways to backup and  
restore Certification Authority.

---
### 4.1 Install and Configure Certificate Services Pt 5

* Implement administrative role separation
  - Properties of CA
  - Must create groups
  - Microsoft recommends
    - CA administrator -> Manage CA
    - Certificate manager -> Issue and Manage Certificates
* Configure CA backup and recovery
  - CA console
    - Right-click -> All Tasks -> Back up CA...
    - Select items and location
  - Command-line
    - Certutil -Backup <path to backup location>
    - Certutil -Restore <path to backup location>
  - PowerShell
    - Backup-CARoleService -Path <backup path> [-DatabaseOnly | -KeyOnly]
    - Restore-CARoleService -Path <backup path> [-DatabaseOnly | -KeyOnly]