Find-Module azurerm | Install-Module
import-module azurerm 
$azureAccountName ="al@amarlanda.com"
$azurePassword = ConvertTo-SecureString "Wyc0mb3!!" -AsPlainText -Force

$psCred = New-Object System.Management.Automation.PSCredential($azureAccountName, $azurePassword)

Add-AzureAccount -Credential $psCred 

$rg = 'automation-ps-rg'
$aa = 'automation-ps-aa'

New-AzureAutomationVariable -Name 'log-age' -Encrypted $false -Description 'max number of old days' -Value '2' -AutomationAccountName 'automation-ps-aa'


#Login-AzureRmAccount -Credential $psCred | 