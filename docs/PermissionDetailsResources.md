# PermissionDetailsResources


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifact** | [**PermissionResource**](PermissionResource.md) |  | [optional] 
**build** | [**PermissionResource**](PermissionResource.md) |  | [optional] 
**release_bundle** | [**PermissionResource**](PermissionResource.md) |  | [optional] 

## Example

```python
from jfrog_client.models.permission_details_resources import PermissionDetailsResources

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionDetailsResources from a JSON string
permission_details_resources_instance = PermissionDetailsResources.from_json(json)
# print the JSON string representation of the object
print(PermissionDetailsResources.to_json())

# convert the object into a dict
permission_details_resources_dict = permission_details_resources_instance.to_dict()
# create an instance of PermissionDetailsResources from a dict
permission_details_resources_from_dict = PermissionDetailsResources.from_dict(permission_details_resources_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


