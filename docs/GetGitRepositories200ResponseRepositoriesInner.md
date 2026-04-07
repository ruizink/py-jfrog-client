# GetGitRepositories200ResponseRepositoriesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier. | [optional] 
**url** | **str** | Repository URL. | [optional] 
**name** | **str** | Repository name. | [optional] 
**git_project** | **str** | Owning project name. | [optional] 
**git_provider** | **str** | Provider: GitHub, GitLab, Bitbucket, Azure, or unknown. | [optional] 
**last_scanned_date** | **str** | ISO 8601 timestamp of the last scan. | [optional] 
**last_scanned_commit** | **str** | Hash of the last scanned commit. | [optional] 
**scanned_branches** | **List[str]** | Branches that were scanned. | [optional] 

## Example

```python
from jfrog_client.models.get_git_repositories200_response_repositories_inner import GetGitRepositories200ResponseRepositoriesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitRepositories200ResponseRepositoriesInner from a JSON string
get_git_repositories200_response_repositories_inner_instance = GetGitRepositories200ResponseRepositoriesInner.from_json(json)
# print the JSON string representation of the object
print(GetGitRepositories200ResponseRepositoriesInner.to_json())

# convert the object into a dict
get_git_repositories200_response_repositories_inner_dict = get_git_repositories200_response_repositories_inner_instance.to_dict()
# create an instance of GetGitRepositories200ResponseRepositoriesInner from a dict
get_git_repositories200_response_repositories_inner_from_dict = GetGitRepositories200ResponseRepositoriesInner.from_dict(get_git_repositories200_response_repositories_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


