# GetBuildsScanResults200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | Name of the build. | [optional] 
**build_number** | **str** | Number of the build. | [optional] 
**project** | **str** | Project associated with the build. | [optional] 
**status** | **str** | Status of the build (e.g. completed). | [optional] 
**more_details_url** | **str** | URL for more details about the build scan. | [optional] 
**fail_build** | **bool** | Whether the build should fail. | [optional] 
**violations** | [**List[GetBuildsScanResults200ResponseViolationsInner]**](GetBuildsScanResults200ResponseViolationsInner.md) | Detected violations. | [optional] 
**vulnerabilities** | [**List[GetBuildsScanResults200ResponseVulnerabilitiesInner]**](GetBuildsScanResults200ResponseVulnerabilitiesInner.md) | Detected vulnerabilities (only if include_vulnerabilities&#x3D;true). | [optional] 

## Example

```python
from jfrog_client.models.get_builds_scan_results200_response import GetBuildsScanResults200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildsScanResults200Response from a JSON string
get_builds_scan_results200_response_instance = GetBuildsScanResults200Response.from_json(json)
# print the JSON string representation of the object
print(GetBuildsScanResults200Response.to_json())

# convert the object into a dict
get_builds_scan_results200_response_dict = get_builds_scan_results200_response_instance.to_dict()
# create an instance of GetBuildsScanResults200Response from a dict
get_builds_scan_results200_response_from_dict = GetBuildsScanResults200Response.from_dict(get_builds_scan_results200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


