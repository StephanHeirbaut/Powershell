# SOURCE: https://powershell.org/forums/topic/get-adgroup-filter-name-like/
# VARIABLE
$Groups = "*Admin*", "*Fin*", "*Dev*", "*Ops*","*Man*"

# Always use '' inside "" when filtering
foreach ($group in $Groups)
{
    Get-ADGroup -Filter "Name -like '$($group)'" | SELECT Name | Sort Name
}