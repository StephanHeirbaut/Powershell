﻿# EXAMPLE
# VARIABLES
$NameUser = "Queen Guinevere"
$Body = "Stop sleeping with my wife"

# Sending the message itself
Send-MailMessage -From 'King Arthur <King.Arthur@contoso.com>' -To 'Lancelot <knight.lancelot@contoso.com>'  -Subject '$($NameUser)' -Body '$($Body)' -SmtpServer smtp.office365.com
