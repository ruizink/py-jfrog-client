# GetGitRepositoryCommits200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**total_count** | **int** |  | [optional] 
**repository_id** | **int** |  | [optional] 
**repository_url** | **str** |  | [optional] 
**repository_name** | **str** |  | [optional] 
**branch_name** | **str** |  | [optional] 
**commits** | [**List[GetGitRepositoryCommits200ResponseCommitsInner]**](GetGitRepositoryCommits200ResponseCommitsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_repository_commits200_response import GetGitRepositoryCommits200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitRepositoryCommits200Response from a JSON string
get_git_repository_commits200_response_instance = GetGitRepositoryCommits200Response.from_json(json)
# print the JSON string representation of the object
print(GetGitRepositoryCommits200Response.to_json())

# convert the object into a dict
get_git_repository_commits200_response_dict = get_git_repository_commits200_response_instance.to_dict()
# create an instance of GetGitRepositoryCommits200Response from a dict
get_git_repository_commits200_response_from_dict = GetGitRepositoryCommits200Response.from_dict(get_git_repository_commits200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


