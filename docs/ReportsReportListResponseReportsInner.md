# ReportsReportListResponseReportsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**report_type** | **str** | Report type: license, vulnerability, operational_risk, violations. | [optional] 
**status** | **str** | Report status: completed, running, pending, aborted, failed. | [optional] 
**total_artifacts** | **int** |  | [optional] 
**num_of_processed_artifacts** | **int** |  | [optional] 
**progress** | **int** |  | [optional] 
**number_of_rows** | **int** |  | [optional] 
**start_time** | **str** |  | [optional] 
**end_time** | **str** |  | [optional] 
**error** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**aborting_user** | **str** |  | [optional] 
**project_key** | **str** |  | [optional] 
**resources** | **object** | Resources scope of the report. | [optional] 
**cron_schedule** | **str** | Cron expression for scheduled reports. | [optional] 
**num_of_results** | **int** |  | [optional] 
**cron_schedule_timezone** | **str** | Timezone for the cron schedule. | [optional] 

## Example

```python
from jfrog_client.models.reports_report_list_response_reports_inner import ReportsReportListResponseReportsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsReportListResponseReportsInner from a JSON string
reports_report_list_response_reports_inner_instance = ReportsReportListResponseReportsInner.from_json(json)
# print the JSON string representation of the object
print(ReportsReportListResponseReportsInner.to_json())

# convert the object into a dict
reports_report_list_response_reports_inner_dict = reports_report_list_response_reports_inner_instance.to_dict()
# create an instance of ReportsReportListResponseReportsInner from a dict
reports_report_list_response_reports_inner_from_dict = ReportsReportListResponseReportsInner.from_dict(reports_report_list_response_reports_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


