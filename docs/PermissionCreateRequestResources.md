# PermissionCreateRequestResources

Resource types included in this permission

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifact** | [**PermissionResource**](PermissionResource.md) |  | [optional] 
**build** | [**PermissionResource**](PermissionResource.md) |  | [optional] 
**release_bundle** | [**PermissionResource**](PermissionResource.md) |  | [optional] 

## Example

```python
from jfrog_client.models.permission_create_request_resources import PermissionCreateRequestResources

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionCreateRequestResources from a JSON string
permission_create_request_resources_instance = PermissionCreateRequestResources.from_json(json)
# print the JSON string representation of the object
print(PermissionCreateRequestResources.to_json())

# convert the object into a dict
permission_create_request_resources_dict = permission_create_request_resources_instance.to_dict()
# create an instance of PermissionCreateRequestResources from a dict
permission_create_request_resources_from_dict = PermissionCreateRequestResources.from_dict(permission_create_request_resources_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


