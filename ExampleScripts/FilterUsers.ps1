$users = Get-ADUser -Filter * | SELECT Name

$csv = Import-Csv -Path "C:\Temp\Alpro HQ Gent.csv" -Delimiter ";"

Get-ADUser | SELECT Name

foreach($user in $csv)
{
    foreach ($aduser in $users)
    {
        
    }
}