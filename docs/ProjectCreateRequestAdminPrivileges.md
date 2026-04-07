# ProjectCreateRequestAdminPrivileges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manage_members** | **bool** |  | [optional] [default to True]
**manage_resources** | **bool** |  | [optional] [default to True]
**index_resources** | **bool** |  | [optional] [default to True]
**manage_remote_repository** | **bool** |  | [optional] [default to True]

## Example

```python
from jfrog_client.models.project_create_request_admin_privileges import ProjectCreateRequestAdminPrivileges

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCreateRequestAdminPrivileges from a JSON string
project_create_request_admin_privileges_instance = ProjectCreateRequestAdminPrivileges.from_json(json)
# print the JSON string representation of the object
print(ProjectCreateRequestAdminPrivileges.to_json())

# convert the object into a dict
project_create_request_admin_privileges_dict = project_create_request_admin_privileges_instance.to_dict()
# create an instance of ProjectCreateRequestAdminPrivileges from a dict
project_create_request_admin_privileges_from_dict = ProjectCreateRequestAdminPrivileges.from_dict(project_create_request_admin_privileges_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


