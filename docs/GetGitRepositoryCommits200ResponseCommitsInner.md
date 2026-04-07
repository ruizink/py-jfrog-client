# GetGitRepositoryCommits200ResponseCommitsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **str** | The hash of the commit. | [optional] 
**author** | **str** | The author of the commit. | [optional] 
**scan_date** | **str** | ISO 8601 timestamp of when the commit was scanned. | [optional] 
**commit_message** | **str** | The message associated with the commit. | [optional] 

## Example

```python
from jfrog_client.models.get_git_repository_commits200_response_commits_inner import GetGitRepositoryCommits200ResponseCommitsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitRepositoryCommits200ResponseCommitsInner from a JSON string
get_git_repository_commits200_response_commits_inner_instance = GetGitRepositoryCommits200ResponseCommitsInner.from_json(json)
# print the JSON string representation of the object
print(GetGitRepositoryCommits200ResponseCommitsInner.to_json())

# convert the object into a dict
get_git_repository_commits200_response_commits_inner_dict = get_git_repository_commits200_response_commits_inner_instance.to_dict()
# create an instance of GetGitRepositoryCommits200ResponseCommitsInner from a dict
get_git_repository_commits200_response_commits_inner_from_dict = GetGitRepositoryCommits200ResponseCommitsInner.from_dict(get_git_repository_commits200_response_commits_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


