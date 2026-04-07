# ProjectRole


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Role name | [optional] 
**description** | **str** | Role description | [optional] 
**type** | **str** | Role type | [optional] 
**environments** | **List[str]** | Environments for the role | [optional] 
**actions** | **List[str]** | Actions permitted by this role | [optional] 

## Example

```python
from jfrog_client.models.project_role import ProjectRole

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectRole from a JSON string
project_role_instance = ProjectRole.from_json(json)
# print the JSON string representation of the object
print(ProjectRole.to_json())

# convert the object into a dict
project_role_dict = project_role_instance.to_dict()
# create an instance of ProjectRole from a dict
project_role_from_dict = ProjectRole.from_dict(project_role_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


