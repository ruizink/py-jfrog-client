# RepositoryAdvancedScansRequestExposures

Exposures scan configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categories** | [**RepositoryAdvancedScansRequestExposuresCategories**](RepositoryAdvancedScansRequestExposuresCategories.md) |  | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request_exposures import RepositoryAdvancedScansRequestExposures

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequestExposures from a JSON string
repository_advanced_scans_request_exposures_instance = RepositoryAdvancedScansRequestExposures.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequestExposures.to_json())

# convert the object into a dict
repository_advanced_scans_request_exposures_dict = repository_advanced_scans_request_exposures_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequestExposures from a dict
repository_advanced_scans_request_exposures_from_dict = RepositoryAdvancedScansRequestExposures.from_dict(repository_advanced_scans_request_exposures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


