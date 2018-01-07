import-module azurerm 

Login-AzureRmAccount
Add-AzureAccount 

 Select-AzureSubscription -Current -SubscriptionName ContosoEngineering

Get-AzureRmSubscription | select name

Select-AzureSubscription -Default -SubscriptionName "Pay-As-You-Go" -SubscriptionDataFile "C:\backup\Azure\MySubscriptions.xml"

New-AzureRmResourceGroup -Name "automation-ps-rg" -Location westeurope
New-AzureRmAutomationAccount -name 'automation-ps-aa' -ResourceGroupName 'automation-ps-rg' -Location westeurope 

$rg = 'automation-ps-rg'
$aa = "automation-ps-aa"

New-AzureRmAutomationRunbook -name 'first-runbook-ps' -Description 'our first PS runbook' -Type PowerShell -ResourceGroupName $rg -AutomationAccountName $aa

