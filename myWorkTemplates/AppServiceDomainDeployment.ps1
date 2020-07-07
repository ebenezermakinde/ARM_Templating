$resourceGroupName="appServiceDomain"
$domainName="ebenezerdev.net"
$localIPAddress = [string](Invoke-RestMethod -uri 'https://api.ipify.org' )
$currentTime = [string](Get-Date ([datetime]::UtcNow) -format "O")
$Address1 = "36 basement"
$Address2 = ""
$City = "Lagos"
$Country = "NG"
$PostalCode = "1066767"
$State = "Lagos"
$Email = "ebenezermakinde@abc.com"
$NameFirst = "Ebenezer"
$NameLast = "Makinde"
$NameMiddle= ""
$Phone ="+234.80000"
$Fax = ""
$JobTitle = ""
$Organization = ""
 
$parameters = @{
    "domainName" = $domainName;
    "localIPAddress" = $localIPAddress;
    "currentTime" = $currentTime;
    "Address1" = $Address1;
    "Address2" = $Address2;
    "City" = $City;
    "Country" = $Country;
    "PostalCode" = $PostalCode;
    "State" = $State;
    "Email" = $Email;
    "NameFirst" = $NameFirst;
    "NameLast" = $NameLast;
    "NameMiddle" = $NameMiddle;
    "Phone" = $Phone;
    "Fax" = $Fax;
    "JobTitle" = $JobTitle;
    "Organization" = $Organization;
}
 
#New-AzResourceGroup -Name $resourceGroupName -Location $location
 
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    -TemplateFile "app_service_domain_ARM.json" `
    -TemplateParameterObject $parameters