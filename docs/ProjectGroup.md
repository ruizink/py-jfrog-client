# ProjectGroup


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Group name | [optional] 
**roles** | **List[str]** | Group roles in the project | [optional] 

## Example

```python
from jfrog_client.models.project_group import ProjectGroup

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectGroup from a JSON string
project_group_instance = ProjectGroup.from_json(json)
# print the JSON string representation of the object
print(ProjectGroup.to_json())

# convert the object into a dict
project_group_dict = project_group_instance.to_dict()
# create an instance of ProjectGroup from a dict
project_group_from_dict = ProjectGroup.from_dict(project_group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


