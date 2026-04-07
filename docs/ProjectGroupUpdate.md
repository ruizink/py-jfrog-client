# ProjectGroupUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roles** | **List[str]** | Roles to assign to the group | [optional] 

## Example

```python
from jfrog_client.models.project_group_update import ProjectGroupUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectGroupUpdate from a JSON string
project_group_update_instance = ProjectGroupUpdate.from_json(json)
# print the JSON string representation of the object
print(ProjectGroupUpdate.to_json())

# convert the object into a dict
project_group_update_dict = project_group_update_instance.to_dict()
# create an instance of ProjectGroupUpdate from a dict
project_group_update_from_dict = ProjectGroupUpdate.from_dict(project_group_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


