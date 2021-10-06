targetScope = 'resourceGroup'


//storage account
resource mainstorage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(resourceGroup().id)
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
  }
}
