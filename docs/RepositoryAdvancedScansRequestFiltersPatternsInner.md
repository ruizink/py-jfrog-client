# RepositoryAdvancedScansRequestFiltersPatternsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_path_pattern** | **str** | Wildcard pattern for including artifact paths. | [optional] 
**exclude_path_pattern** | **str** | Wildcard pattern for excluding artifact paths. | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request_filters_patterns_inner import RepositoryAdvancedScansRequestFiltersPatternsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequestFiltersPatternsInner from a JSON string
repository_advanced_scans_request_filters_patterns_inner_instance = RepositoryAdvancedScansRequestFiltersPatternsInner.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequestFiltersPatternsInner.to_json())

# convert the object into a dict
repository_advanced_scans_request_filters_patterns_inner_dict = repository_advanced_scans_request_filters_patterns_inner_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequestFiltersPatternsInner from a dict
repository_advanced_scans_request_filters_patterns_inner_from_dict = RepositoryAdvancedScansRequestFiltersPatternsInner.from_dict(repository_advanced_scans_request_filters_patterns_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


