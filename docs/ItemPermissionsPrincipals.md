# ItemPermissionsPrincipals


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | **Dict[str, List[str]]** |  | [optional] 
**groups** | **Dict[str, List[str]]** |  | [optional] 

## Example

```python
from jfrog_client.models.item_permissions_principals import ItemPermissionsPrincipals

# TODO update the JSON string below
json = "{}"
# create an instance of ItemPermissionsPrincipals from a JSON string
item_permissions_principals_instance = ItemPermissionsPrincipals.from_json(json)
# print the JSON string representation of the object
print(ItemPermissionsPrincipals.to_json())

# convert the object into a dict
item_permissions_principals_dict = item_permissions_principals_instance.to_dict()
# create an instance of ItemPermissionsPrincipals from a dict
item_permissions_principals_from_dict = ItemPermissionsPrincipals.from_dict(item_permissions_principals_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


