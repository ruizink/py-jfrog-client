# GetViolationsReportContent200ResponseRowsInnerCvesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvss_v2_score** | **float** |  | [optional] 
**cvss_v2_vector** | **str** |  | [optional] 
**cvss_v3_score** | **float** |  | [optional] 
**cvss_v3_vector** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_violations_report_content200_response_rows_inner_cves_inner import GetViolationsReportContent200ResponseRowsInnerCvesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetViolationsReportContent200ResponseRowsInnerCvesInner from a JSON string
get_violations_report_content200_response_rows_inner_cves_inner_instance = GetViolationsReportContent200ResponseRowsInnerCvesInner.from_json(json)
# print the JSON string representation of the object
print(GetViolationsReportContent200ResponseRowsInnerCvesInner.to_json())

# convert the object into a dict
get_violations_report_content200_response_rows_inner_cves_inner_dict = get_violations_report_content200_response_rows_inner_cves_inner_instance.to_dict()
# create an instance of GetViolationsReportContent200ResponseRowsInnerCvesInner from a dict
get_violations_report_content200_response_rows_inner_cves_inner_from_dict = GetViolationsReportContent200ResponseRowsInnerCvesInner.from_dict(get_violations_report_content200_response_rows_inner_cves_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


