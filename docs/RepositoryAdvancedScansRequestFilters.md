# RepositoryAdvancedScansRequestFilters

Filters to determine which artifacts to scan.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date_range** | [**RepositoryAdvancedScansRequestFiltersDateRange**](RepositoryAdvancedScansRequestFiltersDateRange.md) |  | [optional] 
**patterns** | [**List[RepositoryAdvancedScansRequestFiltersPatternsInner]**](RepositoryAdvancedScansRequestFiltersPatternsInner.md) | Path patterns to select artifacts. | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request_filters import RepositoryAdvancedScansRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequestFilters from a JSON string
repository_advanced_scans_request_filters_instance = RepositoryAdvancedScansRequestFilters.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequestFilters.to_json())

# convert the object into a dict
repository_advanced_scans_request_filters_dict = repository_advanced_scans_request_filters_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequestFilters from a dict
repository_advanced_scans_request_filters_from_dict = RepositoryAdvancedScansRequestFilters.from_dict(repository_advanced_scans_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


