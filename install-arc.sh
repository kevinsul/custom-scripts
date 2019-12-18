# Download the installation package
sudo wget https://aka.ms/azcmagent -O /tmp/Install_linux_azcmagent.sh

# Install the connected machine agent. Omit the '--proxy "{proxy-url}"' parameters if proxy is not needed
sudo bash /tmp/Install_linux_azcmagent.sh

sudo azcmagent connect \
  --service-principal-id "b8b0feed-07b3-42c6-b547-274b1ed4bba6" \
  --service-principal-secret "d76da177-c9d9-4c30-80d4-88c10917597a" \
  --resource-group "arc-rg1" \
  --tenant-id "72f988bf-86f1-41af-91ab-2d7cd011db47" \
  --location "westus2" \
  --subscription-id "793b3d21-28ab-48d5-a41f-d842b7091c1c"
