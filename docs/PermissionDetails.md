# PermissionDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Permission name | [optional] 
**resources** | [**PermissionDetailsResources**](PermissionDetailsResources.md) |  | [optional] 

## Example

```python
from jfrog_client.models.permission_details import PermissionDetails

# TODO update the JSON string below
json = "{}"
# create an instance of PermissionDetails from a JSON string
permission_details_instance = PermissionDetails.from_json(json)
# print the JSON string representation of the object
print(PermissionDetails.to_json())

# convert the object into a dict
permission_details_dict = permission_details_instance.to_dict()
# create an instance of PermissionDetails from a dict
permission_details_from_dict = PermissionDetails.from_dict(permission_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


