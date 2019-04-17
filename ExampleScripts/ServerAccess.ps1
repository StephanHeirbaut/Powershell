# Allow remote session
Set-ExecutionPolicy RemoteSigned

#VARIABLES
# Initialize credential for remote connection
$credential = get-credential
# Servername or IP
$ServerName = "servername"

$ Start remote session
New-PSSession -ComputerName "$($ServerName)" -Credential $credential


