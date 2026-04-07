# GetBuildsScanResults200ResponseVulnerabilitiesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issue_id** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**severity** | **str** |  | [optional] 
**provider** | **str** |  | [optional] 
**cves** | [**List[GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner]**](GetBuildsScanResults200ResponseVulnerabilitiesInnerCvesInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_builds_scan_results200_response_vulnerabilities_inner import GetBuildsScanResults200ResponseVulnerabilitiesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildsScanResults200ResponseVulnerabilitiesInner from a JSON string
get_builds_scan_results200_response_vulnerabilities_inner_instance = GetBuildsScanResults200ResponseVulnerabilitiesInner.from_json(json)
# print the JSON string representation of the object
print(GetBuildsScanResults200ResponseVulnerabilitiesInner.to_json())

# convert the object into a dict
get_builds_scan_results200_response_vulnerabilities_inner_dict = get_builds_scan_results200_response_vulnerabilities_inner_instance.to_dict()
# create an instance of GetBuildsScanResults200ResponseVulnerabilitiesInner from a dict
get_builds_scan_results200_response_vulnerabilities_inner_from_dict = GetBuildsScanResults200ResponseVulnerabilitiesInner.from_dict(get_builds_scan_results200_response_vulnerabilities_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


