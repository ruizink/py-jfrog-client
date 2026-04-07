# GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** |  | [optional] 
**cvss_v3_score** | **str** |  | [optional] 
**cvss_v3_vector** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_builds_scan_results200_response_vulnerabilities_inner_cves_inner import GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner from a JSON string
get_builds_scan_results200_response_vulnerabilities_inner_cves_inner_instance = GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner.from_json(json)
# print the JSON string representation of the object
print(GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner.to_json())

# convert the object into a dict
get_builds_scan_results200_response_vulnerabilities_inner_cves_inner_dict = get_builds_scan_results200_response_vulnerabilities_inner_cves_inner_instance.to_dict()
# create an instance of GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner from a dict
get_builds_scan_results200_response_vulnerabilities_inner_cves_inner_from_dict = GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner.from_dict(get_builds_scan_results200_response_vulnerabilities_inner_cves_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


