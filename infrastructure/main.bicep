param location string = 'eastus'
@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module app './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'dometrain-github-actions-gregapos'
    environment: environment
    location: location
  }
}
