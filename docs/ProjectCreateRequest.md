# ProjectCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_key** | **str** | The project key | 
**display_name** | **str** | Display name | 
**description** | **str** | Project description | [optional] 
**admin_privileges** | [**ProjectCreateRequestAdminPrivileges**](ProjectCreateRequestAdminPrivileges.md) |  | [optional] 
**storage_quota_bytes** | **int** | Storage quota in bytes | [optional] 

## Example

```python
from jfrog_client.models.project_create_request import ProjectCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCreateRequest from a JSON string
project_create_request_instance = ProjectCreateRequest.from_json(json)
# print the JSON string representation of the object
print(ProjectCreateRequest.to_json())

# convert the object into a dict
project_create_request_dict = project_create_request_instance.to_dict()
# create an instance of ProjectCreateRequest from a dict
project_create_request_from_dict = ProjectCreateRequest.from_dict(project_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


