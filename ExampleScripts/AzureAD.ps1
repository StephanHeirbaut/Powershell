# VARIABLES
# Credentials to connect to AAD
$credential = Get-Credential

# Install Azure Active Directory module 
Install-Module AzureAD

Install-Module MSOnline 

# Connect to AAD with MFA enabled
Connect-AzureAD

Connect-MsolService

# Connect to AAD without MFA enabled
Connect-AzureAD -Credential $credential

# Get all distributionlists and their members
Get-ADGroup -Filter {GroupCategory -eq "Distribution"} -Properties Members

# Get all Azure AD contacts
Get-AzureADContact

# End connection
Disconnect-AzureAD