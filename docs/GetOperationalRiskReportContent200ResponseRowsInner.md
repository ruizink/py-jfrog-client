# GetOperationalRiskReportContent200ResponseRowsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **str** |  | [optional] 
**artifact** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**artifact_scan_time** | **str** |  | [optional] 
**risk** | **str** |  | [optional] 
**risk_reason** | **str** |  | [optional] 
**released** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**latest_version** | **str** |  | [optional] 
**newer_versions** | **int** |  | [optional] 
**is_eol** | **bool** |  | [optional] 
**eol_message** | **str** |  | [optional] 
**cadence** | **float** |  | [optional] 
**commits** | **int** |  | [optional] 
**committers** | **int** |  | [optional] 
**project_keys** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_operational_risk_report_content200_response_rows_inner import GetOperationalRiskReportContent200ResponseRowsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetOperationalRiskReportContent200ResponseRowsInner from a JSON string
get_operational_risk_report_content200_response_rows_inner_instance = GetOperationalRiskReportContent200ResponseRowsInner.from_json(json)
# print the JSON string representation of the object
print(GetOperationalRiskReportContent200ResponseRowsInner.to_json())

# convert the object into a dict
get_operational_risk_report_content200_response_rows_inner_dict = get_operational_risk_report_content200_response_rows_inner_instance.to_dict()
# create an instance of GetOperationalRiskReportContent200ResponseRowsInner from a dict
get_operational_risk_report_content200_response_rows_inner_from_dict = GetOperationalRiskReportContent200ResponseRowsInner.from_dict(get_operational_risk_report_content200_response_rows_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


