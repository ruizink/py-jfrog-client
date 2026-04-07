# GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation

JFrog Security Research analysis for this CVE.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**severity** | **str** | JFrog Research severity assessment. | [optional] 
**summary** | **str** | Research summary. | [optional] 
**details** | **str** | Detailed research analysis. | [optional] 
**remediation** | **str** | Recommended remediation steps. | [optional] 
**severity_reasons** | [**List[ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformationJfrogResearchSeverityReasonsInner]**](ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformationJfrogResearchSeverityReasonsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information import GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation from a JSON string
get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information_instance = GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information_dict = get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation from a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information_from_dict = GetGitCommitScanResults200ResponseScanResultsCvesInnerJfrogResearchInformation.from_dict(get_git_commit_scan_results200_response_scan_results_cves_inner_jfrog_research_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


