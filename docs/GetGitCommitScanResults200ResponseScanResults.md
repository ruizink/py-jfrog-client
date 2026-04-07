# GetGitCommitScanResults200ResponseScanResults

Detailed scan results for the commit.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cves** | [**List[GetGitCommitScanResults200ResponseScanResultsCvesInner]**](GetGitCommitScanResults200ResponseScanResultsCvesInner.md) | CVEs found in the commit. | [optional] 
**sbom** | [**List[GetGitCommitScanResults200ResponseScanResultsSbomInner]**](GetGitCommitScanResults200ResponseScanResultsSbomInner.md) | SBOM components detected in the commit. | [optional] 
**operational_risks** | [**List[GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner]**](GetGitCommitScanResults200ResponseScanResultsOperationalRisksInner.md) | Operational risks identified during the scan. | [optional] 
**secrets** | [**List[GetGitCommitScanResults200ResponseScanResultsSecretsInner]**](GetGitCommitScanResults200ResponseScanResultsSecretsInner.md) | Secrets detected in the code. | [optional] 
**iac** | [**List[GetGitCommitScanResults200ResponseScanResultsIacInner]**](GetGitCommitScanResults200ResponseScanResultsIacInner.md) | Infrastructure as Code issues identified. | [optional] 
**sast** | [**List[GetGitCommitScanResults200ResponseScanResultsSastInner]**](GetGitCommitScanResults200ResponseScanResultsSastInner.md) | Static Application Security Testing results. | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results import GetGitCommitScanResults200ResponseScanResults

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResults from a JSON string
get_git_commit_scan_results200_response_scan_results_instance = GetGitCommitScanResults200ResponseScanResults.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResults.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_dict = get_git_commit_scan_results200_response_scan_results_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResults from a dict
get_git_commit_scan_results200_response_scan_results_from_dict = GetGitCommitScanResults200ResponseScanResults.from_dict(get_git_commit_scan_results200_response_scan_results_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


