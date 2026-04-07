# ReportsGenerateExposuresRequestFilters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **str** | One of: secrets, services, applications, iac | 
**scan_date** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 
**impacted_artifact** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_exposures_request_filters import ReportsGenerateExposuresRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateExposuresRequestFilters from a JSON string
reports_generate_exposures_request_filters_instance = ReportsGenerateExposuresRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateExposuresRequestFilters.to_json())

# convert the object into a dict
reports_generate_exposures_request_filters_dict = reports_generate_exposures_request_filters_instance.to_dict()
# create an instance of ReportsGenerateExposuresRequestFilters from a dict
reports_generate_exposures_request_filters_from_dict = ReportsGenerateExposuresRequestFilters.from_dict(reports_generate_exposures_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


