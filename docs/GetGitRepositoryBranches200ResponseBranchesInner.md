# GetGitRepositoryBranches200ResponseBranchesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Branch name. | [optional] 
**last_scanned_date** | **str** | ISO 8601 timestamp of the last scan on this branch. | [optional] 
**last_scanned_commit** | **str** | Hash of the last scanned commit for the branch. | [optional] 
**scanned_commits_count** | **int** | Total number of commits scanned for this branch. | [optional] 

## Example

```python
from jfrog_client.models.get_git_repository_branches200_response_branches_inner import GetGitRepositoryBranches200ResponseBranchesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitRepositoryBranches200ResponseBranchesInner from a JSON string
get_git_repository_branches200_response_branches_inner_instance = GetGitRepositoryBranches200ResponseBranchesInner.from_json(json)
# print the JSON string representation of the object
print(GetGitRepositoryBranches200ResponseBranchesInner.to_json())

# convert the object into a dict
get_git_repository_branches200_response_branches_inner_dict = get_git_repository_branches200_response_branches_inner_instance.to_dict()
# create an instance of GetGitRepositoryBranches200ResponseBranchesInner from a dict
get_git_repository_branches200_response_branches_inner_from_dict = GetGitRepositoryBranches200ResponseBranchesInner.from_dict(get_git_repository_branches200_response_branches_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


