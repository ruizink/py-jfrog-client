# PermissionListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | [**List[PermissionListResponsePermissionsInner]**](PermissionListResponsePermissionsInner.md) |  | [optional] 
**cursor** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.permission_list_response import PermissionListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionListResponse from a JSON string
permission_list_response_instance = PermissionListResponse.from_json(json)
# print the JSON string representation of the object
print(PermissionListResponse.to_json())

# convert the object into a dict
permission_list_response_dict = permission_list_response_instance.to_dict()
# create an instance of PermissionListResponse from a dict
permission_list_response_from_dict = PermissionListResponse.from_dict(permission_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


