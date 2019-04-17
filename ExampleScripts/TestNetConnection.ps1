# TROUBLESHOOTING NETWORK REQUESTS
# VARIABLES
# Can also be HTTP, DNS, SQL, ...
$port = 443
# http or https in prefix necessary to differeniate
$URI = "link"
$Proxy = "proxy location"
$Credential = Get-Credential

# Expanded PING-command
Test-NetConnection -Port $port -ComputerName $URI -InformationLevel Detailed

# Default webrequest
Invoke-WebRequest -Uri $URI

# If credentials are needed
Invoke-WebRequest -Uri $URI -Credential $Credential

# If a proxy is in place
Invoke-WebRequest -Uri $URI -Proxy $Proxy

# If connection fails, interupt when and display message
Try{
    $WR = Invoke-WebRequest -Uri $URI -Credential $Credential -ErrorAction Stop
} Catch {
    $status = $_.message.exception
    Write-Warning $status
}