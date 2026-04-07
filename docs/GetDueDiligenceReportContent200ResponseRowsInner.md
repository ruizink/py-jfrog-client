# GetDueDiligenceReportContent200ResponseRowsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_key** | **str** |  | [optional] 
**license_name** | **str** |  | [optional] 
**component** | **str** |  | [optional] 
**artifact** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**artifact_scan_time** | **str** |  | [optional] 
**unknown** | **bool** |  | [optional] 
**unrecognized** | **bool** |  | [optional] 
**custom** | **bool** |  | [optional] 
**package_type** | **str** |  | [optional] 
**references** | **List[str]** |  | [optional] 
**impact_path** | **List[str]** |  | [optional] 
**project_keys** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_due_diligence_report_content200_response_rows_inner import GetDueDiligenceReportContent200ResponseRowsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetDueDiligenceReportContent200ResponseRowsInner from a JSON string
get_due_diligence_report_content200_response_rows_inner_instance = GetDueDiligenceReportContent200ResponseRowsInner.from_json(json)
# print the JSON string representation of the object
print(GetDueDiligenceReportContent200ResponseRowsInner.to_json())

# convert the object into a dict
get_due_diligence_report_content200_response_rows_inner_dict = get_due_diligence_report_content200_response_rows_inner_instance.to_dict()
# create an instance of GetDueDiligenceReportContent200ResponseRowsInner from a dict
get_due_diligence_report_content200_response_rows_inner_from_dict = GetDueDiligenceReportContent200ResponseRowsInner.from_dict(get_due_diligence_report_content200_response_rows_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


