# GlobalRoleUpdate

Request body matches the Role resource model. `name` must match the `{role}` path segment. `type` must match the role's current type (unchanged on edit). Other fields are optional; send `description`, `environments`, and `actions` only when updating those aspects.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Role name; typically matches the &#x60;{role}&#x60; path parameter. | 
**description** | **str** |  | [optional] 
**type** | [**GlobalRoleType**](GlobalRoleType.md) |  | 
**environments** | **List[str]** |  | [optional] 
**actions** | **List[str]** | Permission actions as enum constant names (e.g. READ_REPOSITORY, MANAGE_MEMBERS). | [optional] 

## Example

```python
from jfrog_client.models.global_role_update import GlobalRoleUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of GlobalRoleUpdate from a JSON string
global_role_update_instance = GlobalRoleUpdate.from_json(json)
# print the JSON string representation of the object
print(GlobalRoleUpdate.to_json())

# convert the object into a dict
global_role_update_dict = global_role_update_instance.to_dict()
# create an instance of GlobalRoleUpdate from a dict
global_role_update_from_dict = GlobalRoleUpdate.from_dict(global_role_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


