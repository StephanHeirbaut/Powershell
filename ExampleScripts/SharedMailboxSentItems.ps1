# name shared mailbox
$SharedMailbox = “name shared mailbox”

# Enable mailbox to send copies to user
set-mailbox $SharedMailbox -MessageCopyForSentAsEnabled $True
set-mailbox $SharedMailbox -MessageCopyForSendOnBehalfEnabled $True