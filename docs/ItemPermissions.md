# ItemPermissions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**principals** | [**ItemPermissionsPrincipals**](ItemPermissionsPrincipals.md) |  | [optional] 

## Example

```python
from jfrog_client.models.item_permissions import ItemPermissions

# TODO update the JSON string below
json = "{}"
# create an instance of ItemPermissions from a JSON string
item_permissions_instance = ItemPermissions.from_json(json)
# print the JSON string representation of the object
print(ItemPermissions.to_json())

# convert the object into a dict
item_permissions_dict = item_permissions_instance.to_dict()
# create an instance of ItemPermissions from a dict
item_permissions_from_dict = ItemPermissions.from_dict(item_permissions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


