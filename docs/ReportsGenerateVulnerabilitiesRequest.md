# ReportsGenerateVulnerabilitiesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Report display name | 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsVulnerabilityFilters**](ReportsVulnerabilityFilters.md) |  | 

## Example

```python
from jfrog_client.models.reports_generate_vulnerabilities_request import ReportsGenerateVulnerabilitiesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateVulnerabilitiesRequest from a JSON string
reports_generate_vulnerabilities_request_instance = ReportsGenerateVulnerabilitiesRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateVulnerabilitiesRequest.to_json())

# convert the object into a dict
reports_generate_vulnerabilities_request_dict = reports_generate_vulnerabilities_request_instance.to_dict()
# create an instance of ReportsGenerateVulnerabilitiesRequest from a dict
reports_generate_vulnerabilities_request_from_dict = ReportsGenerateVulnerabilitiesRequest.from_dict(reports_generate_vulnerabilities_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


