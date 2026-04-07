# GetGitCommitScanResults200ResponseScanResultsSecretsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jfrog_severity** | **str** |  | [optional] 
**id** | **str** | Exposure ID. | [optional] 
**description** | **str** |  | [optional] 
**abbreviation** | **str** |  | [optional] 
**cwe** | [**GetGitCommitScanResults200ResponseScanResultsSecretsInnerCwe**](GetGitCommitScanResults200ResponseScanResultsSecretsInnerCwe.md) |  | [optional] 
**file** | **str** | File path where the secret was found. | [optional] 
**start_line** | **int** |  | [optional] 
**origin** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_secrets_inner import GetGitCommitScanResults200ResponseScanResultsSecretsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsSecretsInner from a JSON string
get_git_commit_scan_results200_response_scan_results_secrets_inner_instance = GetGitCommitScanResults200ResponseScanResultsSecretsInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsSecretsInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_secrets_inner_dict = get_git_commit_scan_results200_response_scan_results_secrets_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsSecretsInner from a dict
get_git_commit_scan_results200_response_scan_results_secrets_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsSecretsInner.from_dict(get_git_commit_scan_results200_response_scan_results_secrets_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


