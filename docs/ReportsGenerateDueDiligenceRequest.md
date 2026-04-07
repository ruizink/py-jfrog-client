# ReportsGenerateDueDiligenceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Display name for the report. | 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsGenerateDueDiligenceRequestFilters**](ReportsGenerateDueDiligenceRequestFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_due_diligence_request import ReportsGenerateDueDiligenceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateDueDiligenceRequest from a JSON string
reports_generate_due_diligence_request_instance = ReportsGenerateDueDiligenceRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateDueDiligenceRequest.to_json())

# convert the object into a dict
reports_generate_due_diligence_request_dict = reports_generate_due_diligence_request_instance.to_dict()
# create an instance of ReportsGenerateDueDiligenceRequest from a dict
reports_generate_due_diligence_request_from_dict = ReportsGenerateDueDiligenceRequest.from_dict(reports_generate_due_diligence_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


