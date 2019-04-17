# VARIABLES
# variables may be filled in partially for broader result
$mailaddress = "mailadress"
$name = "name"

# Based on mailaddress
Get-Mailbox -Filter "PrimarySMTPAddress -like '*$($mailaddress)*'" | Format-Table -AutoSize
Get-Mailbox -Filter "PrimarySMTPAddress -like '*$($mailaddress)*'" | Export-Csv -Path C:\Temp\Mailbox.csv

# Based on name
Get-Mailbox -Filter "Name -like '*$($name)*'" | Format-Table -AutoSize
Get-Mailbox -Filter "Name -like '*$($name)*'" | Export-Csv -Path C:\Temp\Mailbox.csv

# Get creation date mailbox
Get-Mailbox -Filter "DisplayName -like '*$($name)*'" | select Name,whenCreated