# GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Component identifier (e.g., pypi://werkzeug:1.0.1). | [optional] 
**type** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**fixed_versions** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner import GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner from a JSON string
get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner_instance = GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner_dict = get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner from a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner.from_dict(get_git_commit_scan_results200_response_scan_results_cves_inner_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


