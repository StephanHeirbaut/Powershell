# Remoting

## Enabling remote session

|Command|Option|Description|
|--------|------|-----------|
|Enable-PSRemoting|| enable Powershell remoting|
|Get-PSSessionConfiguration|| get information on Powershell remoting|
|Set-PSSessionConfiguration|| change Powershell remoting configuration|
|Get-NetFirewallRule|| get all allowed network traffic|
|Set-NetFirewallRule|| get extended information, text based|
|Get-Item WSMAN:\localhost\Client\TrustedHosts|| show all hosts allowed on computer|
|Set-Item WSMAN:\localhost\Client\TrustedHosts|| set all hosts allowed on computer through IP or computername|

## Connecting

|Command|Option|Description|
|--------|------|-----------|
|New-PSSession|| start new PSSession on target coputer|
|Enter-PSSession|| enter Powershell remoting session on target computer|
|Remove-PSSession|| stop session on target computer|
|Invoke-Command|| run single command on target computer|
|New-CimSession|| get information from a CimInstance on a target remote computer|

## Examples

|Command|Description|
|--------|-----------|
|Set-PSSessionConfiguration -Name Microsoft.Powershell -ShowSecurityDescriptionUI| set configuration through GUI|
|Get-NetFirewallRule Where Displayname -Like "Windows Management Instrumentation" Select Displayname,Name,Enabled|| get all allowed WMI traffic|
|Get-NetFirewallRule Where Displayname -Like "Windows Management Instrumentation" Select Displayname,Name,Enabled | Set-NetFirewallRule -Enabled True -Verbose|| get all allowed WMI traffic and enable it|
|Invoke-Command -ComputerName *computername* -Scriptblock {run multiple commands here} out-file *location*| run a single commandblock and output it to a file in a specific location|