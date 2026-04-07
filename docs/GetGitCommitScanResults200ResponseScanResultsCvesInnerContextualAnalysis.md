# GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis

Contextual analysis (applicability) results for this CVE.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applicability_result** | **str** | Applicability status (e.g., applicable, not_applicable). | [optional] 
**cve** | **str** | The CVE identifier this analysis relates to. | [optional] 
**scanner_description** | **str** | Explanation from the contextual analysis scanner. | [optional] 
**applicability_evidence** | [**GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysisApplicabilityEvidence**](GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysisApplicabilityEvidence.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis import GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis from a JSON string
get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis_instance = GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis_dict = get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis from a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis_from_dict = GetGitCommitScanResults200ResponseScanResultsCvesInnerContextualAnalysis.from_dict(get_git_commit_scan_results200_response_scan_results_cves_inner_contextual_analysis_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


