# ScanBuildV1200ResponseAlertsInnerIssuesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**severity** | **str** |  | [optional] 
**type** | **str** | Issue type: Security, License, or Operational_Risk. | [optional] 
**provider** | **str** |  | [optional] 
**created** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**cve** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1200_response_alerts_inner_issues_inner import ScanBuildV1200ResponseAlertsInnerIssuesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1200ResponseAlertsInnerIssuesInner from a JSON string
scan_build_v1200_response_alerts_inner_issues_inner_instance = ScanBuildV1200ResponseAlertsInnerIssuesInner.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1200ResponseAlertsInnerIssuesInner.to_json())

# convert the object into a dict
scan_build_v1200_response_alerts_inner_issues_inner_dict = scan_build_v1200_response_alerts_inner_issues_inner_instance.to_dict()
# create an instance of ScanBuildV1200ResponseAlertsInnerIssuesInner from a dict
scan_build_v1200_response_alerts_inner_issues_inner_from_dict = ScanBuildV1200ResponseAlertsInnerIssuesInner.from_dict(scan_build_v1200_response_alerts_inner_issues_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


