# Gathering network information

## General commands

|Command|Option|Description|
|--------|------|-----------|
|ipconfig /all|| get extended information, text based|
|Get-NetIPAddress || get information on IP address|
|Get-NetIPConfiguration|| get IP configuration|
|ping *ip*|| send ICMP packages to destination|
|Test-Connection *ip*|| get info remote IP|
|tracert *ip*|| trace route to IP address|
|Test-Connection *ip* -TraceRoute|| trace route to IP address|
|Get-DnsClient|| get NIC configuration info|
|Get-DnsClientCache|| get all cached info locally|
|Get-DnsClientServerAddress|| get serveraddresses for all NIC's|
|Get-SmbMapping|| get all mapped drives|
|New-SmbMapping|| create a SMB mapped drive|


## Specific commands

|Command|Description|
|--------|-----------|
|New-SmbMapping -LocalPath *driveletter*: -RemotePath *UNC path to server*| create a SMB-mapping with *driveletter* and *serverpath*|
|Test-Connection -CommonTCPPORT *protocol* -CompurterName *name*|| get info remote computer using hostname and specific *protocolname*|