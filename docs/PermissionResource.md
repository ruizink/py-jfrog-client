# PermissionResource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**Actions**](Actions.md) |  | [optional] 
**targets** | [**Dict[str, Patterns]**](Patterns.md) | Map of target names to their include/exclude patterns | [optional] 

## Example

```python
from jfrog_client.models.permission_resource import PermissionResource

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionResource from a JSON string
permission_resource_instance = PermissionResource.from_json(json)
# print the JSON string representation of the object
print(PermissionResource.to_json())

# convert the object into a dict
permission_resource_dict = permission_resource_instance.to_dict()
# create an instance of PermissionResource from a dict
permission_resource_from_dict = PermissionResource.from_dict(permission_resource_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


