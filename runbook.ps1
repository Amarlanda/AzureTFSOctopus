
$azureAccountName ="al@amarlanda.com"
$azurePassword = ConvertTo-SecureString "Wyc0mb3!!" -AsPlainText -Force

$psCred = New-Object System.Management.Automation.PSCredential($azureAccountName, $azurePassword)

Login-AzureRmAccount -Credential $psCred

$rg = 'automation-ps-rg'
$aa = "automation-ps-aa"

#New-AzureRmAutomationRunbook -name `
#'first-runbook-ps1' -Description 'our first PS runbook' -Type 'PowerShell' `
#-ResourceGroupName $rg -AutomationAccountName $aa 

Import-AzureRmAutomationRunbook -Path "C:\backup\Code\AzureTFSOctopus\manifests\first-runbook.ps1" -name 'first-runbook-ps11' `
-type PowerShell -ResourceGroupName $rg -AutomationAccountName $aa 


