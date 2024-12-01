// common
targetScope = 'subscription'

// parameters
////////////////////////////////////////////////////////////////////////////////

@description('Set rg location')
@allowed([
  'australiaeast'
  'centralus'
  'eastus'
  'eastus2'
  'japaneast'
  'northcentralus'
  'uksouth'
  'westcentralus'
  'westeurope'
])
var rgLocation = 'eastus'

// variables
////////////////////////////////////////////////////////////////////////////////

// tags
var rgTags = {
  Product: 'contosotraders-1530041'
  Environment: '1530041'
}

// resource groups
////////////////////////////////////////////////////////////////////////////////

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'contosotraders-1530041'
  location: rgLocation
  tags: rgTags
}

// outputs
////////////////////////////////////////////////////////////////////////////////

output outputRgName string = rg.name
