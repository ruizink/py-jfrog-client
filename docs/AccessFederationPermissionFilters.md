# AccessFederationPermissionFilters

Optional permission-name include/exclude patterns for a federation target

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_patterns** | **List[str]** | Include patterns (sorted set in the API; represented as JSON array) | [optional] 
**exclude_patterns** | **List[str]** | Exclude patterns (sorted set in the API; represented as JSON array) | [optional] 

## Example

```python
from jfrog_client.models.access_federation_permission_filters import AccessFederationPermissionFilters

# TODO update the JSON string below
json = "{}"
# create an instance of AccessFederationPermissionFilters from a JSON string
access_federation_permission_filters_instance = AccessFederationPermissionFilters.from_json(json)
# print the JSON string representation of the object
print(AccessFederationPermissionFilters.to_json())

# convert the object into a dict
access_federation_permission_filters_dict = access_federation_permission_filters_instance.to_dict()
# create an instance of AccessFederationPermissionFilters from a dict
access_federation_permission_filters_from_dict = AccessFederationPermissionFilters.from_dict(access_federation_permission_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


