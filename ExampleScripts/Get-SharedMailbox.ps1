# VARIABLES
# Fill in parts of the name for a broader result
$MailAddress = "mailadress@mail.com"
$Name = "name"


# Based on mailaddress
Get-Mailbox -Filter "PrimarySMTPAddress -like '*$MailAddress*'" | Format-Table -AutoSize

# Based on name
Get-Mailbox -Filter "Name -like '*$Name*'" | Format-Table -AutoSize