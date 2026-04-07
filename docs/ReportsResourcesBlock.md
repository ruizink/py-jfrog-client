# ReportsResourcesBlock

Report scope; provide at least one resource category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repositories** | [**List[ReportsRepositoryEntry]**](ReportsRepositoryEntry.md) |  | [optional] 
**builds** | [**ReportsBuildsScope**](ReportsBuildsScope.md) |  | [optional] 
**release_bundles** | [**ReportsNamedScopeWithPatterns**](ReportsNamedScopeWithPatterns.md) |  | [optional] 
**release_bundles_v2** | [**ReportsBuildsScope**](ReportsBuildsScope.md) |  | [optional] 
**projects** | [**ReportsProjectsScope**](ReportsProjectsScope.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_resources_block import ReportsResourcesBlock

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsResourcesBlock from a JSON string
reports_resources_block_instance = ReportsResourcesBlock.from_json(json)
# print the JSON string representation of the object
print(ReportsResourcesBlock.to_json())

# convert the object into a dict
reports_resources_block_dict = reports_resources_block_instance.to_dict()
# create an instance of ReportsResourcesBlock from a dict
reports_resources_block_from_dict = ReportsResourcesBlock.from_dict(reports_resources_block_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


