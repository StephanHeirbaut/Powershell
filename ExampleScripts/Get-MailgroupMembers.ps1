# Elevate Executionright
Write-Output "ELEVATING POWERSHELL SESSION"
Set-ExecutionPolicy RemoteSigned -Force

# VARIABLES
# Credential to gain access to mailserver
Write-Output "PLEASE FILL IN ECP CREDENTIALS"
$UserCredential = Get-Credential
# List of all the mailgroups you want the members of
Write-Output "INITIALIZING MAILGROUP VARIABLE"
$MailGroups = "Devs", "Ops", "Management", "Marketing", "Finance"
# Starts a remote Powershell session on the mailserver
Write-Output "SETTTING UP SESSION"
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

# Import the session into your Powershell instance
Write-Output "IMPORTING SESSION"
Import-PSSession $Session -DisableNameChecking

# Get all the displayname and mailaddress of all the users from mailgroups defined in $group
# Sort by displayname
# Add them to a CSV-file that will be created in C:\Temp
# The file will have the same name as the mailgroup
Write-Output "GETTING ALL MEMBERS FROM DEFINED GROUPS AND WRITING THEM TO CSV"
foreach ($group in $MailGroups)
{
    Get-DistributionGroupMember "$($group)" | Select-Object -Property Name,PrimarySmtpAddress | Sort-Object -Property Name | Export-Csv "C:\Temp\$($group).csv"
}

# End the session
# Important! Always close a session when done, or it may continue to be open in the background
Write-Output "CLOSING SESSION"
Remove-PSSession $Session