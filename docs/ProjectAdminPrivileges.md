# ProjectAdminPrivileges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manage_members** | **bool** |  | [optional] 
**manage_resources** | **bool** |  | [optional] 
**index_resources** | **bool** |  | [optional] 
**manage_remote_repository** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.project_admin_privileges import ProjectAdminPrivileges

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectAdminPrivileges from a JSON string
project_admin_privileges_instance = ProjectAdminPrivileges.from_json(json)
# print the JSON string representation of the object
print(ProjectAdminPrivileges.to_json())

# convert the object into a dict
project_admin_privileges_dict = project_admin_privileges_instance.to_dict()
# create an instance of ProjectAdminPrivileges from a dict
project_admin_privileges_from_dict = ProjectAdminPrivileges.from_dict(project_admin_privileges_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


