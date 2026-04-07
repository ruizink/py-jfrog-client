# ReportsGenerateOperationalRiskRequestFilters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **str** |  | [optional] 
**artifact** | **str** |  | [optional] 
**risks** | **List[str]** |  | [optional] 
**scan_date** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_operational_risk_request_filters import ReportsGenerateOperationalRiskRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateOperationalRiskRequestFilters from a JSON string
reports_generate_operational_risk_request_filters_instance = ReportsGenerateOperationalRiskRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateOperationalRiskRequestFilters.to_json())

# convert the object into a dict
reports_generate_operational_risk_request_filters_dict = reports_generate_operational_risk_request_filters_instance.to_dict()
# create an instance of ReportsGenerateOperationalRiskRequestFilters from a dict
reports_generate_operational_risk_request_filters_from_dict = ReportsGenerateOperationalRiskRequestFilters.from_dict(reports_generate_operational_risk_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


