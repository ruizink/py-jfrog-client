# ProjectUserUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roles** | **List[str]** | Roles to assign to the user | [optional] 

## Example

```python
from jfrog_client.models.project_user_update import ProjectUserUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectUserUpdate from a JSON string
project_user_update_instance = ProjectUserUpdate.from_json(json)
# print the JSON string representation of the object
print(ProjectUserUpdate.to_json())

# convert the object into a dict
project_user_update_dict = project_user_update_instance.to_dict()
# create an instance of ProjectUserUpdate from a dict
project_user_update_from_dict = ProjectUserUpdate.from_dict(project_user_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


