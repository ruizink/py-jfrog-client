# GlobalRoleCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**description** | **str** |  | [optional] 
**type** | **str** | Must be CUSTOM_GLOBAL. This endpoint creates custom global roles only. | 
**environments** | **List[str]** |  | [optional] 
**actions** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.global_role_create import GlobalRoleCreate

# TODO update the JSON string below
json = "{}"
# create an instance of GlobalRoleCreate from a JSON string
global_role_create_instance = GlobalRoleCreate.from_json(json)
# print the JSON string representation of the object
print(GlobalRoleCreate.to_json())

# convert the object into a dict
global_role_create_dict = global_role_create_instance.to_dict()
# create an instance of GlobalRoleCreate from a dict
global_role_create_from_dict = GlobalRoleCreate.from_dict(global_role_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


