# GlobalRole


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Role name | [optional] 
**description** | **str** | Role description | [optional] 
**type** | [**GlobalRoleType**](GlobalRoleType.md) |  | [optional] 
**environments** | **List[str]** |  | [optional] 
**actions** | **List[str]** | Permission actions as enum constant names (e.g. READ_REPOSITORY, MANAGE_MEMBERS). | [optional] 

## Example

```python
from jfrog_client.models.global_role import GlobalRole

# TODO update the JSON string below
json = "{}"
# create an instance of GlobalRole from a JSON string
global_role_instance = GlobalRole.from_json(json)
# print the JSON string representation of the object
print(GlobalRole.to_json())

# convert the object into a dict
global_role_dict = global_role_instance.to_dict()
# create an instance of GlobalRole from a dict
global_role_from_dict = GlobalRole.from_dict(global_role_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


