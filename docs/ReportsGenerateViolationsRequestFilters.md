# ReportsGenerateViolationsRequestFilters

Optional filters to narrow the violations report results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Violation type filter: security|license|operational_risk. | [optional] 
**watch_names** | **List[str]** | Filter by watch names. | [optional] 
**watch_patterns** | **List[str]** | Wildcard patterns for watch names. | [optional] 
**component** | **str** | Wildcard pattern for filtering components. | [optional] 
**artifact** | **str** | Wildcard pattern for filtering artifacts. | [optional] 
**policy_names** | **List[str]** | Filter by policy names. | [optional] 
**severities** | **List[str]** | Filter by severity levels. | [optional] 
**updated** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 
**security_filters** | [**ReportsGenerateViolationsRequestFiltersSecurityFilters**](ReportsGenerateViolationsRequestFiltersSecurityFilters.md) |  | [optional] 
**license_filters** | [**ReportsGenerateViolationsRequestFiltersLicenseFilters**](ReportsGenerateViolationsRequestFiltersLicenseFilters.md) |  | [optional] 
**scan_date** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 
**violation_status** | **str** | Filter by violation status. | [optional] 
**runtime_filter** | **bool** | Filter by runtime context. | [optional] 
**ca_filter** | **bool** | Filter by contextual analysis results. | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_violations_request_filters import ReportsGenerateViolationsRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateViolationsRequestFilters from a JSON string
reports_generate_violations_request_filters_instance = ReportsGenerateViolationsRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateViolationsRequestFilters.to_json())

# convert the object into a dict
reports_generate_violations_request_filters_dict = reports_generate_violations_request_filters_instance.to_dict()
# create an instance of ReportsGenerateViolationsRequestFilters from a dict
reports_generate_violations_request_filters_from_dict = ReportsGenerateViolationsRequestFilters.from_dict(reports_generate_violations_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


