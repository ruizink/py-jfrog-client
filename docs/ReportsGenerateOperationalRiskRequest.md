# ReportsGenerateOperationalRiskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsGenerateOperationalRiskRequestFilters**](ReportsGenerateOperationalRiskRequestFilters.md) |  | 

## Example

```python
from jfrog_client.models.reports_generate_operational_risk_request import ReportsGenerateOperationalRiskRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateOperationalRiskRequest from a JSON string
reports_generate_operational_risk_request_instance = ReportsGenerateOperationalRiskRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateOperationalRiskRequest.to_json())

# convert the object into a dict
reports_generate_operational_risk_request_dict = reports_generate_operational_risk_request_instance.to_dict()
# create an instance of ReportsGenerateOperationalRiskRequest from a dict
reports_generate_operational_risk_request_from_dict = ReportsGenerateOperationalRiskRequest.from_dict(reports_generate_operational_risk_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


