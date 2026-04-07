# ReportsGenerateViolationsRequestNotify

Notification settings for the report.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **List[str]** | Email addresses to notify when the report completes. | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_violations_request_notify import ReportsGenerateViolationsRequestNotify

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateViolationsRequestNotify from a JSON string
reports_generate_violations_request_notify_instance = ReportsGenerateViolationsRequestNotify.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateViolationsRequestNotify.to_json())

# convert the object into a dict
reports_generate_violations_request_notify_dict = reports_generate_violations_request_notify_instance.to_dict()
# create an instance of ReportsGenerateViolationsRequestNotify from a dict
reports_generate_violations_request_notify_from_dict = ReportsGenerateViolationsRequestNotify.from_dict(reports_generate_violations_request_notify_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


