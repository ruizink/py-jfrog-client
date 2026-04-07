# Project


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_key** | **str** | The project key | [optional] 
**display_name** | **str** | Display name | [optional] 
**description** | **str** | Project description | [optional] 
**admin_privileges** | [**ProjectAdminPrivileges**](ProjectAdminPrivileges.md) |  | [optional] 
**storage_quota_bytes** | **int** | Storage quota in bytes | [optional] 
**soft_limit** | **bool** | Whether the storage quota is a soft limit | [optional] 
**storage_quota_email_notification** | **bool** | Whether to send email notifications when storage quota is exceeded | [optional] 

## Example

```python
from jfrog_client.models.project import Project

# TODO update the JSON string below
json = "{}"
# create an instance of Project from a JSON string
project_instance = Project.from_json(json)
# print the JSON string representation of the object
print(Project.to_json())

# convert the object into a dict
project_dict = project_instance.to_dict()
# create an instance of Project from a dict
project_from_dict = Project.from_dict(project_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


