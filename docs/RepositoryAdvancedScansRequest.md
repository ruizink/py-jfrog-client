# RepositoryAdvancedScansRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository** | **str** | Name of the repository to scan. | 
**filters** | [**RepositoryAdvancedScansRequestFilters**](RepositoryAdvancedScansRequestFilters.md) |  | [optional] 
**contextual_analysis** | **bool** | Whether to perform Contextual Analysis. | [optional] 
**exposures** | [**RepositoryAdvancedScansRequestExposures**](RepositoryAdvancedScansRequestExposures.md) |  | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request import RepositoryAdvancedScansRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequest from a JSON string
repository_advanced_scans_request_instance = RepositoryAdvancedScansRequest.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequest.to_json())

# convert the object into a dict
repository_advanced_scans_request_dict = repository_advanced_scans_request_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequest from a dict
repository_advanced_scans_request_from_dict = RepositoryAdvancedScansRequest.from_dict(repository_advanced_scans_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


