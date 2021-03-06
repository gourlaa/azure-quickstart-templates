# VM-high-iops-data-disks

Create a VM from 32 Data Disks configured for high IOPS

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgourlaa%2Fazure-quickstart-templates%2Fmaster%2Fvm-d14-high-iops-32-data-disks%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template creates an instance with the maximum number of data disks configured in a simple storage space.   It creates a new volume with the target interleave of 64KB striped across the number of disks present.  The volume is formatted with NTFS and presented as the H:\.    This is ideal for IOPS and throughput intensive workloads while still leveraging standard storage.  The storage account created is locally redundant (LRS) as geo-redundant (GRS) would potentially be corrupted replicas to do the async process.
