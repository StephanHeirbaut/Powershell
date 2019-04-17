#SOURCES
# https://o365info.com/room-mailbox-powershell-commands/

# Elevate Executionright
Set-ExecutionPolicy RemoteSigned

# variables
# Initialize credentials
$UserCredential = Get-Credential

# Set-up session
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

# connect session
Import-PSSession $Session -DisableNameChecking

# disconnect session
Remove-PSSession $Session