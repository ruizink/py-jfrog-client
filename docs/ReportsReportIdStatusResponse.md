# ReportsReportIdStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_id** | **int** | New report identifier | 
**status** | **str** | e.g. pending, running, completed | 

## Example

```python
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsReportIdStatusResponse from a JSON string
reports_report_id_status_response_instance = ReportsReportIdStatusResponse.from_json(json)
# print the JSON string representation of the object
print(ReportsReportIdStatusResponse.to_json())

# convert the object into a dict
reports_report_id_status_response_dict = reports_report_id_status_response_instance.to_dict()
# create an instance of ReportsReportIdStatusResponse from a dict
reports_report_id_status_response_from_dict = ReportsReportIdStatusResponse.from_dict(reports_report_id_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


