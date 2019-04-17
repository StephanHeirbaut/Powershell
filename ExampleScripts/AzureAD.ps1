# VARIABLES
# Credentials to connect to AAD
$credential = Get-Credential

# Install Azure Active Directory module 
Install-Module AzureAD

# Connect to AAD
Connect-AzureAD -Credential $credential

# Get all distributionlists and their members
Get-ADGroup -Filter {GroupCategory -eq "Distribution"} -Properties Members

# Get all Azure AD contacts
Get-AzureADContact 

# End connection
Disconnect-AzureAD