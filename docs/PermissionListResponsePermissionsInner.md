# PermissionListResponsePermissionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**uri** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.permission_list_response_permissions_inner import PermissionListResponsePermissionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionListResponsePermissionsInner from a JSON string
permission_list_response_permissions_inner_instance = PermissionListResponsePermissionsInner.from_json(json)
# print the JSON string representation of the object
print(PermissionListResponsePermissionsInner.to_json())

# convert the object into a dict
permission_list_response_permissions_inner_dict = permission_list_response_permissions_inner_instance.to_dict()
# create an instance of PermissionListResponsePermissionsInner from a dict
permission_list_response_permissions_inner_from_dict = PermissionListResponsePermissionsInner.from_dict(permission_list_response_permissions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


