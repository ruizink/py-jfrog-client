# ProjectRoleCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Role name | 
**description** | **str** | Role description | [optional] 
**type** | **str** | Role type | 
**environments** | **List[str]** |  | [optional] 
**actions** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.project_role_create import ProjectRoleCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectRoleCreate from a JSON string
project_role_create_instance = ProjectRoleCreate.from_json(json)
# print the JSON string representation of the object
print(ProjectRoleCreate.to_json())

# convert the object into a dict
project_role_create_dict = project_role_create_instance.to_dict()
# create an instance of ProjectRoleCreate from a dict
project_role_create_from_dict = ProjectRoleCreate.from_dict(project_role_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


