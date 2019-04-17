# VARIABLES
$GroupName = "groupname"

# get group based on matching name
# you have to be specific here
# else use a filter function
# identity only for returning one result
Get-ADGroup -Identity $GroupName
Get-ADPrincipalGroupMembership -Identity $GroupName | Select Name | Sort Name