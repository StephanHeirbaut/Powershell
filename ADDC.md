# Active Directory

## Prerequisites

You can import and display the cmdlets by running the following commands from Windows PowerShell. You need only run the Add-WindowsFeature for the specific server role that you would like to add.

|Commando|Options  |Parameters  |Description |
|--------|---------|------------|------------|
|install-windowsfeature |/|-name AD-Domain-Services –IncludeManagementTools|This command will extract all required binary files and start the installation procedure|
|Add-ADDSReadOnlyDomainControllerAccount|/|/|Creates a read-only domain controller (RODC) account that can be used to install an RODC in Active Directory.|
|Import-Module|/|ServerManager|Imports the Server Manager module that provides the Add-WindowsFeature cmdlet.|
|Add-WindowsFeature AD-Domain-Services|/|/|Adds the Active Directory Domain Services binaries.|
|Add-WindowsFeature|/|AD-Domain-Services|Adds the Active Directory Domain Services binaries.|
|Import-Module|/|ADDSDeployment|Imports the AD DS Deployment module that provides the above cmdlets.|
|Get-Command|-Module|ADDSDeployment|Displays all the above cmdlets that are associated with AD DS Deployment.|

## AD DS Deployment Cmdlets

|Commando|Options  |Parameters  |Description |
|--------|---------|------------|------------|
|Install-ADDSDomainController|/|/|Installs a domain controller in Active Directory.|
|Install-ADDSDomain|/|/|Installs a new Active Directory domain configuration.|
|Install-ADDSForest|/|/|Installs a new Active Directory forest configuration.|
|Add-ADDSReadOnlyDomainControllerAccount|/|/|Creates a read-only domain controller (RODC) account that can be used to install an RODC in Active Directory.|
|Test-ADDSDomainControllerInstallation|/|/|Runs the prerequisites (only) for installing a domain controller in Active Directory.|
|Test-ADDSDomainControllerUninstallation|/|/|Runs the prerequisites (only) for uninstalling a domain controller in Active Directory.|
|Test-ADDSDomainInstallation|/|/|Runs the prerequisites (only) for installing a new Active Directory domain configuration.|
|Test-ADDSForestInstallation|/|/|Runs the prerequisites (only) for installing a new forest in Active Directory.|
|Test-ADDSReadOnlyDomainControllerAccountCreation|/|/|Runs the prerequisites (only) for adding a read-only domain controller (RODC) account.|
|Uninstall-ADDSDomainController|/|/|Uninstalls a domain controller in Active Directory.|

## Voorbeelden
    install-addsdomaincontroller –domainname "yourdomain" –credential (get-credential)
    install-ADDSForest –domainname "ethernuno.intra"

    Install-ADDSForest
    -CreateDnsDelegation:$false
    -DatabasePath “C:\Windows\NTDS”
    -DomainMode “Win2012R2”
    -DomainName “yourdomain.com”
    -DomainNetbiosName “YOURDOMAIN”
    -ForestMode “Win2012R2”
    -InstallDns:$true
    -LogPath “C:\Windows\NTDS”
    -NoRebootOnCompletion:$false
    -SysvolPath “C:\Windows\SYSVOL”
    -Force:$true





	




	

