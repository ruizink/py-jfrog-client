# GetProjectRepositoryStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_name** | **str** | The repository name | [optional] 
**assigned_to** | **str** | The project key the repository is assigned to | [optional] 
**environments** | **List[str]** | Environments the repository belongs to | [optional] 
**shared_with_projects** | **List[str]** | List of project keys the repository is shared with | [optional] 
**shared_with_all_projects** | **bool** | Whether the repository is shared with all projects | [optional] 
**shared_read_only** | **bool** | Whether the repository is shared as read-only | [optional] 

## Example

```python
from jfrog_client.models.get_project_repository_status200_response import GetProjectRepositoryStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProjectRepositoryStatus200Response from a JSON string
get_project_repository_status200_response_instance = GetProjectRepositoryStatus200Response.from_json(json)
# print the JSON string representation of the object
print(GetProjectRepositoryStatus200Response.to_json())

# convert the object into a dict
get_project_repository_status200_response_dict = get_project_repository_status200_response_instance.to_dict()
# create an instance of GetProjectRepositoryStatus200Response from a dict
get_project_repository_status200_response_from_dict = GetProjectRepositoryStatus200Response.from_dict(get_project_repository_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


