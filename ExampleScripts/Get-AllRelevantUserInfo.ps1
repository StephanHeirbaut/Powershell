#VARIABLES
$Name1 = "name1"
$Name2 = "name2"

# Get Name, Distinguished name and samaccount name 
Get-ADUser -Properties Name -Filter "(Name -like '*$($Name1)*' -or Name -like '*$($Name2)*')" | Select-Object Name, DistinguishedName, SamAccountName | Sort-Object Name