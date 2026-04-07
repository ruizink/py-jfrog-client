# ScanBuildV1200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**ScanBuildV1200ResponseSummary**](ScanBuildV1200ResponseSummary.md) |  | [optional] 
**alerts** | [**List[ScanBuildV1200ResponseAlertsInner]**](ScanBuildV1200ResponseAlertsInner.md) | Alert details generated from the scan. | [optional] 
**licenses** | [**List[ScanBuildV1200ResponseLicensesInner]**](ScanBuildV1200ResponseLicensesInner.md) | License details from the scan. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1200_response import ScanBuildV1200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1200Response from a JSON string
scan_build_v1200_response_instance = ScanBuildV1200Response.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1200Response.to_json())

# convert the object into a dict
scan_build_v1200_response_dict = scan_build_v1200_response_instance.to_dict()
# create an instance of ScanBuildV1200Response from a dict
scan_build_v1200_response_from_dict = ScanBuildV1200Response.from_dict(scan_build_v1200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


