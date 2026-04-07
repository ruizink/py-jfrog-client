# PermissionCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Permission name | 
**description** | **str** | Permission description | [optional] 
**resources** | [**PermissionCreateRequestResources**](PermissionCreateRequestResources.md) |  | [optional] 

## Example

```python
from jfrog_client.models.permission_create_request import PermissionCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionCreateRequest from a JSON string
permission_create_request_instance = PermissionCreateRequest.from_json(json)
# print the JSON string representation of the object
print(PermissionCreateRequest.to_json())

# convert the object into a dict
permission_create_request_dict = permission_create_request_instance.to_dict()
# create an instance of PermissionCreateRequest from a dict
permission_create_request_from_dict = PermissionCreateRequest.from_dict(permission_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


