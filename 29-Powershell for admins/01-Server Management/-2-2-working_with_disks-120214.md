PowerShell for System Admins - 2.0 Server Management
============================================================

2.2 Working with Disks
------------------------------------------------------------

* Query current disks
	+ List disks
		- `Get-Disk`
		- `Get-PhysicalDisk`
		- `Get-VirtualDisk`
	+ List volumes
		- `Get-Volume`
		- `Get-Volume | Sort-Object DriveLetter`
	+ To exclude removable media
		- `Get-Partition`
* Bringing a new disk online
	1. Ensure the disk is detected by the OS. The current
	   status should be "offline." Record the drive number 
	`Get-Disk`
	2. Initialize the disk  
	`Initialize-Disk –Number <#>`
	3. Create a partition on the disk  
	`New-Partition -DiskNumber <#> -AssignDriveLetter -UseMaximumSize`  
	`New-Partition -DiskNumber <#> -AssignDriveLetter -Size 64GB`
	4. Format the volume  
	`Format-Volume –DriveLetter <A-Z> –FileSystem NTFS`
	5. Assign a name to the volume  
	`Set-Volume –DriveLetter <A-Z> –NewFileSystemLabel "VolumeName"`
* Deleting a partition
	+ `Remove-Partition –DriveLetter <A-Z>`
* Performing Disk Maintenance
	+ Defragmenting a drive
		- `Optimize-Volume –DriveLetter <A-Z>`
	+ Disk error checking and correction
		- `Repair-Volume –DriveLetter <A-Z>`
* Shrinking/Growing a volume
	1. Use Get-Disk and Get-Volume to determine the drive and
	  volume numbers
	2. Perform the operation  
	`Resize-Partition -DiskNumber <#> -PartitionNumber <#> -Size <NewSize>`
	3. Verify the change using Get-Volume