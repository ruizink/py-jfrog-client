# GetDueDiligenceReportContent200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_rows** | **int** | Total number of rows in the report. | [optional] 
**rows** | [**List[GetDueDiligenceReportContent200ResponseRowsInner]**](GetDueDiligenceReportContent200ResponseRowsInner.md) | List of license report rows. | [optional] 

## Example

```python
from jfrog_client.models.get_due_diligence_report_content200_response import GetDueDiligenceReportContent200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetDueDiligenceReportContent200Response from a JSON string
get_due_diligence_report_content200_response_instance = GetDueDiligenceReportContent200Response.from_json(json)
# print the JSON string representation of the object
print(GetDueDiligenceReportContent200Response.to_json())

# convert the object into a dict
get_due_diligence_report_content200_response_dict = get_due_diligence_report_content200_response_instance.to_dict()
# create an instance of GetDueDiligenceReportContent200Response from a dict
get_due_diligence_report_content200_response_from_dict = GetDueDiligenceReportContent200Response.from_dict(get_due_diligence_report_content200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


