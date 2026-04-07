# GetGitCommitScanResults200ResponseScanResultsIacInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jfrog_severity** | **str** |  | [optional] 
**id** | **str** | Issue ID. | [optional] 
**file** | **str** |  | [optional] 
**start_line** | **int** |  | [optional] 
**abbreviation** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_iac_inner import GetGitCommitScanResults200ResponseScanResultsIacInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsIacInner from a JSON string
get_git_commit_scan_results200_response_scan_results_iac_inner_instance = GetGitCommitScanResults200ResponseScanResultsIacInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsIacInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_iac_inner_dict = get_git_commit_scan_results200_response_scan_results_iac_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsIacInner from a dict
get_git_commit_scan_results200_response_scan_results_iac_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsIacInner.from_dict(get_git_commit_scan_results200_response_scan_results_iac_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


