Powershell for System Admins
============================================================

Hyper-V
------------------------------------------------------------

* Working with VM Snapshots
  + Create a Snapshot on a VM
    - `Checkpoint-VM -Name WEBSERVER01 -SnapshotName "Prior to Update"`
  + List Snapshots
    - `Get-VMSnapshot –VMName WEBSERVER01`
  + Apply/Rollback to a Snapshot
    - `Restore-VMSnapshot –Name 'Prior to Update' –VMName WEBSERVER01`
