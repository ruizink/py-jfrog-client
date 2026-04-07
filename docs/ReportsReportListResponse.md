# ReportsReportListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_export_limit** | **int** | Maximum number of rows allowed for PDF export. | [optional] 
**max_saved_limit** | **int** | Maximum number of saved reports allowed. | [optional] 
**total_reports** | **int** | Total number of reports matching the filters. | [optional] 
**reports** | [**List[ReportsReportListResponseReportsInner]**](ReportsReportListResponseReportsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_report_list_response import ReportsReportListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsReportListResponse from a JSON string
reports_report_list_response_instance = ReportsReportListResponse.from_json(json)
# print the JSON string representation of the object
print(ReportsReportListResponse.to_json())

# convert the object into a dict
reports_report_list_response_dict = reports_report_list_response_instance.to_dict()
# create an instance of ReportsReportListResponse from a dict
reports_report_list_response_from_dict = ReportsReportListResponse.from_dict(reports_report_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


