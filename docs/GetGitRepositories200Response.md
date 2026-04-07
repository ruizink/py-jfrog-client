# GetGitRepositories200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**total_count** | **int** |  | [optional] 
**repositories** | [**List[GetGitRepositories200ResponseRepositoriesInner]**](GetGitRepositories200ResponseRepositoriesInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_repositories200_response import GetGitRepositories200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitRepositories200Response from a JSON string
get_git_repositories200_response_instance = GetGitRepositories200Response.from_json(json)
# print the JSON string representation of the object
print(GetGitRepositories200Response.to_json())

# convert the object into a dict
get_git_repositories200_response_dict = get_git_repositories200_response_instance.to_dict()
# create an instance of GetGitRepositories200Response from a dict
get_git_repositories200_response_from_dict = GetGitRepositories200Response.from_dict(get_git_repositories200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


