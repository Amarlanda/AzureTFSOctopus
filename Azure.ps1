import-module azurerm 

Login-AzureRmAccount 

Get-AzureRmSubscription | select name

New-AzureRmResourceGroup -Name "automation-ps-rg" -Location westeurope
New-AzureRmAutomationAccount -name 'automation-ps-aa' -ResourceGroupName 'automation-ps-rg' -Location westeurope

$rg = 'automation-ps-rg'
$aa = "automation-ps-aa"

New-AzureRmAutomationRunbook -name 'first-runbook-ps' -Description 'our first runbook' -Type PowerShell -ResourceGroupName $rg -AutomationAccountName $aa