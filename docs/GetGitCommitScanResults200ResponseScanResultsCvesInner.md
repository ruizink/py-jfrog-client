# GetGitCommitScanResults200ResponseScanResultsCvesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier (e.g., XRAY-XXXX). | [optional] 
**severity** | **str** | Severity level: Critical, High, Medium, Low. | [optional] 
**severity_source** | **str** | Source of severity rating (e.g., CVSS V3 from NVD). | [optional] 
**jfrog_severity** | **str** | JFrog Research severity level. | [optional] 
**summary** | **str** | Brief description of the vulnerability. | [optional] 
**cve** | [**GetGitCommitScanResults200ResponseScanResultsCvesInnerCve**](GetGitCommitScanResults200ResponseScanResultsCvesInnerCve.md) |  | [optional] 
**components** | [**List[GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner]**](GetGitCommitScanResults200ResponseScanResultsCvesInnerComponentsInner.md) |  | [optional] 
**contextual_analysis** | [**GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis**](GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis.md) |  | [optional] 
**jfrog_research_information** | [**GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation**](GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_cves_inner import GetGitCommitScanResults200ResponseScanResultsCvesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInner from a JSON string
get_git_commit_scan_results200_response_scan_results_cves_inner_instance = GetGitCommitScanResults200ResponseScanResultsCvesInner.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsCvesInner.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_dict = get_git_commit_scan_results200_response_scan_results_cves_inner_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInner from a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_from_dict = GetGitCommitScanResults200ResponseScanResultsCvesInner.from_dict(get_git_commit_scan_results200_response_scan_results_cves_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


