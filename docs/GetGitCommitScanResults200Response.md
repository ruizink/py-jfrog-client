# GetGitCommitScanResults200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository_id** | **int** |  | [optional] 
**repository_url** | **str** |  | [optional] 
**repository_name** | **str** |  | [optional] 
**branch_name** | **str** |  | [optional] 
**commit_hash** | **str** |  | [optional] 
**scan_results** | [**GetGitCommitScanResults200ResponseScanResults**](GetGitCommitScanResults200ResponseScanResults.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response import GetGitCommitScanResults200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200Response from a JSON string
get_git_commit_scan_results200_response_instance = GetGitCommitScanResults200Response.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200Response.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_dict = get_git_commit_scan_results200_response_instance.to_dict()
# create an instance of GetGitCommitScanResults200Response from a dict
get_git_commit_scan_results200_response_from_dict = GetGitCommitScanResults200Response.from_dict(get_git_commit_scan_results200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


