# ProjectRoleUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Role type. Must be &#39;CUSTOM&#39; for project-specific roles. Only custom roles can be updated. | 
**description** | **str** |  | [optional] 
**environments** | **List[str]** |  | [optional] 
**actions** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.project_role_update import ProjectRoleUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectRoleUpdate from a JSON string
project_role_update_instance = ProjectRoleUpdate.from_json(json)
# print the JSON string representation of the object
print(ProjectRoleUpdate.to_json())

# convert the object into a dict
project_role_update_dict = project_role_update_instance.to_dict()
# create an instance of ProjectRoleUpdate from a dict
project_role_update_from_dict = ProjectRoleUpdate.from_dict(project_role_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


