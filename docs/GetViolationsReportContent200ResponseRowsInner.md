# GetViolationsReportContent200ResponseRowsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Violation type: security, license, operational_risk. | [optional] 
**vulnerable_component** | **str** |  | [optional] 
**impacted_artifact** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**watch_name** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**policy_names** | **List[str]** |  | [optional] 
**severity** | **str** |  | [optional] 
**package_type** | **str** |  | [optional] 
**issue_id** | **str** |  | [optional] 
**updated** | **str** |  | [optional] 
**cves** | [**List[GetViolationsReportContent200ResponseRowsInnerCvesInner]**](GetViolationsReportContent200ResponseRowsInnerCvesInner.md) |  | [optional] 
**cvss2_max_score** | **float** |  | [optional] 
**cvss3_max_score** | **float** |  | [optional] 
**fixed_versions** | **List[str]** |  | [optional] 
**license_key** | **str** |  | [optional] 
**license_name** | **str** |  | [optional] 
**published** | **str** |  | [optional] 
**artifact_scan_time** | **str** |  | [optional] 
**provider** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**project_keys** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_violations_report_content200_response_rows_inner import GetViolationsReportContent200ResponseRowsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetViolationsReportContent200ResponseRowsInner from a JSON string
get_violations_report_content200_response_rows_inner_instance = GetViolationsReportContent200ResponseRowsInner.from_json(json)
# print the JSON string representation of the object
print(GetViolationsReportContent200ResponseRowsInner.to_json())

# convert the object into a dict
get_violations_report_content200_response_rows_inner_dict = get_violations_report_content200_response_rows_inner_instance.to_dict()
# create an instance of GetViolationsReportContent200ResponseRowsInner from a dict
get_violations_report_content200_response_rows_inner_from_dict = GetViolationsReportContent200ResponseRowsInner.from_dict(get_violations_report_content200_response_rows_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


