# GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** |  | [optional] 
**component_name** | **str** |  | [optional] 
**component_version** | **str** |  | [optional] 
**risk** | **str** | Risk level. | [optional] 
**risk_reason** | **str** |  | [optional] 
**is_eol** | **bool** |  | [optional] 
**released** | **str** |  | [optional] 
**latest_version** | **str** |  | [optional] 
**cadence** | **int** | Release cadence. | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_operational_risks_inner import GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner from a JSON string
get_git_commit_scan_results200_response_scan_results_operational_risks_inner_instance = GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_operational_risks_inner_dict = get_git_commit_scan_results200_response_scan_results_operational_risks_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner from a dict
get_git_commit_scan_results200_response_scan_results_operational_risks_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner.from_dict(get_git_commit_scan_results200_response_scan_results_operational_risks_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


