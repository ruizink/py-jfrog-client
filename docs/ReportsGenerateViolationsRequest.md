# ReportsGenerateViolationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Display name for the report. | 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsGenerateViolationsRequestFilters**](ReportsGenerateViolationsRequestFilters.md) |  | [optional] 
**notify** | [**ReportsGenerateViolationsRequestNotify**](ReportsGenerateViolationsRequestNotify.md) |  | [optional] 
**cron_schedule** | **str** | Cron expression for scheduling recurring report generation. | [optional] 
**cron_schedule_timezone** | **str** | Timezone for the cron schedule (e.g., UTC, America/New_York). | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_violations_request import ReportsGenerateViolationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateViolationsRequest from a JSON string
reports_generate_violations_request_instance = ReportsGenerateViolationsRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateViolationsRequest.to_json())

# convert the object into a dict
reports_generate_violations_request_dict = reports_generate_violations_request_instance.to_dict()
# create an instance of ReportsGenerateViolationsRequest from a dict
reports_generate_violations_request_from_dict = ReportsGenerateViolationsRequest.from_dict(reports_generate_violations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


