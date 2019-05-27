# SOURCES:
# https://social.technet.microsoft.com/Forums/windows/en-US/6673b735-3b60-49b2-948c-930dac9c3548/how-to-import-mfa-enabled-exchange-online-powershell-module-in-ise?forum=onlineservicesexchange
# Location module : http://aka.ms/exopspreview
# Click-once application

# Import module after it's been installed locally through the browser
Import-Module $((Get-ChildItem -Path $($env:LOCALAPPDATA+"\Apps\2.0\") -Filter Microsoft.Exchange.Management.ExoPowershellModule.dll -Recurse ).FullName|?{$_ -notmatch "_none_"}|select -First 1)

# Initialize session 
$EXOSession = New-ExoPSSession

# Import Session
Import-PSSession $EXOSession

# Test command
Get-Mailbox

# End session
Remove-PSSession $EXOSession