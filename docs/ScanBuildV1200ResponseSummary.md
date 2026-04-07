# ScanBuildV1200ResponseSummary

Summary of the scan result.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_alerts** | **int** | Total number of alerts generated. | [optional] 
**fail_build** | **bool** | Whether the build should fail. | [optional] 
**message** | **str** | Informational message about the scan. | [optional] 
**more_details_url** | **str** | Link to all created alerts in Xray. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1200_response_summary import ScanBuildV1200ResponseSummary

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1200ResponseSummary from a JSON string
scan_build_v1200_response_summary_instance = ScanBuildV1200ResponseSummary.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1200ResponseSummary.to_json())

# convert the object into a dict
scan_build_v1200_response_summary_dict = scan_build_v1200_response_summary_instance.to_dict()
# create an instance of ScanBuildV1200ResponseSummary from a dict
scan_build_v1200_response_summary_from_dict = ScanBuildV1200ResponseSummary.from_dict(scan_build_v1200_response_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


