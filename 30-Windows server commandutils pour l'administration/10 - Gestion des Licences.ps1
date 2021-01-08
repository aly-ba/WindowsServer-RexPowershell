
# Liste les information de licence
slmgr.vbs /dli
slmgr.vbs /dlv
slmgr.vbs /xpr

# Installe une licence
slmgr.vbs / ipk ##### - ##### - ##### - ##### - #####

# Active une licence
slmgr /ato

### Retire la licence du registre
slmgr.vbs / upk

### Retire\Supprime la licence
slmgr.vbs / cpky

### Retrouver la licence Windows en clair
(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey



