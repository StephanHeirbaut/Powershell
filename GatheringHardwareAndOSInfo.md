# Gathering hardware and OS info

## General commands

|Command|Option|Description|
|--------|------|-----------|
|Start-Service || starts a service|
|Stop-Service || stops a service|
|Restart-Service || restarts a service|
|Get-Process| get information on process|
|Set-ACL || set permission on files and shared|
|Set-ADGroup || add users to group on AD|
|Set-ADUser || adjust user account on AD|
|Get-Counter|| get realtime info on performance|
|Get-CIMClass||get all known CimClass, input for Get-Cimstance|
|Get-CIMInstance Win32_name ||Get information regarding specific CimInstance|
|Get-WMIObject –class Win32_class || get information on WMI(Windows Management Instrumentation)-objects|
|Get-WMIObject –List –Namespace root\wmi || get all WMI-objects|
|Get-WMIObject –List 'pipe' Where-object {$_.name –match ‘Win32’} || get all win32 Cmdlets|
|Get-Eventlog|| get logs of events|
|Get-Printer|| get information on all installed printers|
|Add-Printer|| add a printer|
|Remove-Printer|| remove a printer|

## Specific commands

|Command|Description|
|--------|-----------|
|Get-CimInstance Win32_PhysicalMemory |Amount of physical memory on device|
|Get-Counter "\memory\% Commited Bytes in use" |Amount of physical memory in use|
|Get-WmiObject -Class Win32_LogicalDisk |Amount of available HDD/SSD space|
|Get-CimInstance Win32_BIOS| Get BIOS information|
|Get-EventLog -log system -newest 1000 where-object eventid -eq '*number*' formattable machinename,username,timegenerated -autosize|Get eventlogs for specific *applicationnumber*|
|Set-Location hklm:\software | Set-ItemProperty -Path .\ *key* -value *value*|| set value for registry-entry|
|Get-Printer -Name *printername -ComputerName *printserver* formatlist| get all information on the specific printer that's installed on that printerserver|
|Add-Printer -ConnectionName *printserver* | add printer from specific printserver|