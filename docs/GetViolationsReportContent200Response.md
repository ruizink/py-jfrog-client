# GetViolationsReportContent200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_rows** | **int** | Total number of rows in the report. | [optional] 
**rows** | [**List[GetViolationsReportContent200ResponseRowsInner]**](GetViolationsReportContent200ResponseRowsInner.md) | List of violation report rows. | [optional] 

## Example

```python
from jfrog_client.models.get_violations_report_content200_response import GetViolationsReportContent200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetViolationsReportContent200Response from a JSON string
get_violations_report_content200_response_instance = GetViolationsReportContent200Response.from_json(json)
# print the JSON string representation of the object
print(GetViolationsReportContent200Response.to_json())

# convert the object into a dict
get_violations_report_content200_response_dict = get_violations_report_content200_response_instance.to_dict()
# create an instance of GetViolationsReportContent200Response from a dict
get_violations_report_content200_response_from_dict = GetViolationsReportContent200Response.from_dict(get_violations_report_content200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


