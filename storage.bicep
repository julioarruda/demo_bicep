param location string = resourceGroup().location
param prefix string = 'stg'

var storageName = '${prefix}${uniqueString(resourceGroup().id)}'

resource storage 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: storageName
  location:location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}