Filename: microsoft-server70742-4-2-3-manage-certificates-pt3    
Show Name: Identity with Windows Server 2016 (70-742)
Topic Name: Implement Active Directory Certificate Services
Episode Name: Manage Certificates Pt 3
Description: In this episode, Aubri and Mike continue managing certificates in  
a PKI. They set up an enrollment agent to enroll for certificates on behalf of  
someone else. They also look at managing certificate lifecycles, including  
certificate renewal.

---
### 4.2 Manage Certificates Pt 3

    - On behalf
      - Duplicate Enrollment Agent certificate template
        - Grant Enrollment Agents group enroll permission
      - Log on as Enrollment Agent and request certificate
      - Configure Smartcard template to require enrollment agent
        - Duplicate Smartcard Logon template
        - Set Issuance Requirements
          - Check number of authorized signatures, value 1
          - Set policy type to Application policy
          - Set application policy to Certificate Request Agent
          - Grant Enrollment Agents group enroll permission
  - Revocation
    - Right-click issued certificate -> Revoke -> Choose reason
    - All are permanent, except certificate hold
* Manage certificate renewal
* Manage certificate enrolment and renewal for computers and users using Group Policies
  - Only Enterprise CAs
  - Must assign auto-enrollment on Certificate template
