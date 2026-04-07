# GetGitCommitScanResults200ResponseScanResultsSbomInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** | Component identifier (e.g., pypi://werkzeug:1.0.1). | [optional] 
**component_name** | **str** |  | [optional] 
**component_version** | **str** |  | [optional] 
**package_type** | **str** |  | [optional] 
**licenses** | [**List[GetGitCommitScanResults200ResponseScanResultsSbomInnerLicensesInner]**](GetGitCommitScanResults200ResponseScanResultsSbomInnerLicensesInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_sbom_inner import GetGitCommitScanResults200ResponseScanResultsSbomInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsSbomInner from a JSON string
get_git_commit_scan_results200_response_scan_results_sbom_inner_instance = GetGitCommitScanResults200ResponseScanResultsSbomInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsSbomInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_sbom_inner_dict = get_git_commit_scan_results200_response_scan_results_sbom_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsSbomInner from a dict
get_git_commit_scan_results200_response_scan_results_sbom_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsSbomInner.from_dict(get_git_commit_scan_results200_response_scan_results_sbom_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


