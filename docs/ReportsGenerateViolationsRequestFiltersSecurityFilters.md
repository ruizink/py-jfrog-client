# ReportsGenerateViolationsRequestFiltersSecurityFilters

Additional security-specific filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** |  | [optional] 
**issue_id** | **str** |  | [optional] 
**summary_contains** | **str** |  | [optional] 
**has_remediation** | **bool** |  | [optional] 
**cvss_score** | [**ReportsCvssScoreRange**](ReportsCvssScoreRange.md) |  | [optional] 
**published** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_violations_request_filters_security_filters import ReportsGenerateViolationsRequestFiltersSecurityFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateViolationsRequestFiltersSecurityFilters from a JSON string
reports_generate_violations_request_filters_security_filters_instance = ReportsGenerateViolationsRequestFiltersSecurityFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateViolationsRequestFiltersSecurityFilters.to_json())

# convert the object into a dict
reports_generate_violations_request_filters_security_filters_dict = reports_generate_violations_request_filters_security_filters_instance.to_dict()
# create an instance of ReportsGenerateViolationsRequestFiltersSecurityFilters from a dict
reports_generate_violations_request_filters_security_filters_from_dict = ReportsGenerateViolationsRequestFiltersSecurityFilters.from_dict(reports_generate_violations_request_filters_security_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


