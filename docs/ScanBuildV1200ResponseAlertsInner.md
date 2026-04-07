# ScanBuildV1200ResponseAlertsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **str** | Alert creation time. | [optional] 
**top_severity** | **str** | Highest severity in the alert. | [optional] 
**watch_name** | **str** | Watch name that triggered the alert. | [optional] 
**issues** | [**List[ScanBuildV1200ResponseAlertsInnerIssuesInner]**](ScanBuildV1200ResponseAlertsInnerIssuesInner.md) | Issues included in the alert. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1200_response_alerts_inner import ScanBuildV1200ResponseAlertsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1200ResponseAlertsInner from a JSON string
scan_build_v1200_response_alerts_inner_instance = ScanBuildV1200ResponseAlertsInner.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1200ResponseAlertsInner.to_json())

# convert the object into a dict
scan_build_v1200_response_alerts_inner_dict = scan_build_v1200_response_alerts_inner_instance.to_dict()
# create an instance of ScanBuildV1200ResponseAlertsInner from a dict
scan_build_v1200_response_alerts_inner_from_dict = ScanBuildV1200ResponseAlertsInner.from_dict(scan_build_v1200_response_alerts_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


