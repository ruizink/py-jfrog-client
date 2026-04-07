# GetGitCommitScanResults200ResponseScanResultsCvesInnerCve


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | CVE identifier (e.g., CVE-2022-2911). | [optional] 
**cvss_v2** | **str** |  | [optional] 
**cvss_v3** | **str** |  | [optional] 
**cwes** | [**List[GetGitCommitScanResults200ResponseScanResultsCvesInnerCveCwesInner]**](GetGitCommitScanResults200ResponseScanResultsCvesInnerCveCwesInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_git_commit_scan_results200_response_scan_results_cves_inner_cve import GetGitCommitScanResults200ResponseScanResultsCvesInnerCve

# TODO update the JSON string below
json = "{}"
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerCve from a JSON string
get_git_commit_scan_results200_response_scan_results_cves_inner_cve_instance = GetGitCommitScanResults200ResponseScanResultsCvesInnerCve.from_json(json)
# print the JSON string representation of the object
print(GetGitCommitScanResults200ResponseScanResultsCvesInnerCve.to_json())

# convert the object into a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_cve_dict = get_git_commit_scan_results200_response_scan_results_cves_inner_cve_instance.to_dict()
# create an instance of GetGitCommitScanResults200ResponseScanResultsCvesInnerCve from a dict
get_git_commit_scan_results200_response_scan_results_cves_inner_cve_from_dict = GetGitCommitScanResults200ResponseScanResultsCvesInnerCve.from_dict(get_git_commit_scan_results200_response_scan_results_cves_inner_cve_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


