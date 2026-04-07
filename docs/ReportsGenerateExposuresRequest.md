# ReportsGenerateExposuresRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsGenerateExposuresRequestFilters**](ReportsGenerateExposuresRequestFilters.md) |  | 

## Example

```python
from jfrog_client.models.reports_generate_exposures_request import ReportsGenerateExposuresRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateExposuresRequest from a JSON string
reports_generate_exposures_request_instance = ReportsGenerateExposuresRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateExposuresRequest.to_json())

# convert the object into a dict
reports_generate_exposures_request_dict = reports_generate_exposures_request_instance.to_dict()
# create an instance of ReportsGenerateExposuresRequest from a dict
reports_generate_exposures_request_from_dict = ReportsGenerateExposuresRequest.from_dict(reports_generate_exposures_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


