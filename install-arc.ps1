# Download the package
Invoke-WebRequest -Uri https://aka.ms/AzureConnectedMachineAgent -OutFile AzureConnectedMachineAgent.msi

# Install the package
msiexec /i AzureConnectedMachineAgent.msi /l*v installationlog.txt /qn | Out-String

& "$env:ProgramFiles\AzureConnectedMachineAgent\azcmagent.exe" connect `
  --service-principal-id "b8b0feed-07b3-42c6-b547-274b1ed4bba6" `
  --service-principal-secret "d76da177-c9d9-4c30-80d4-88c10917597a" `
  --resource-group "arc-rg1" `
  --tenant-id "72f988bf-86f1-41af-91ab-2d7cd011db47" `
  --location "westus2" `
  --subscription-id "793b3d21-28ab-48d5-a41f-d842b7091c1c"
