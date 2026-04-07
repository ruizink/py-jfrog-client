# ReportsGenerateDueDiligenceRequestFilters

Optional filters to narrow the license report results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **str** | Wildcard pattern for filtering components. | [optional] 
**artifact** | **str** | Wildcard pattern for filtering artifacts. | [optional] 
**unknown** | **bool** | Include components with unknown licenses. | [optional] 
**unrecognized** | **bool** | Include components with unrecognized licenses. | [optional] 
**license_names** | **List[str]** | Filter by specific license names. | [optional] 
**license_patterns** | **List[str]** | Wildcard patterns for license names. | [optional] 
**scan_date** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 
**runtime_filter** | **bool** | Filter by runtime context. | [optional] 
**ca_filter** | **bool** | Filter by contextual analysis results. | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_due_diligence_request_filters import ReportsGenerateDueDiligenceRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateDueDiligenceRequestFilters from a JSON string
reports_generate_due_diligence_request_filters_instance = ReportsGenerateDueDiligenceRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateDueDiligenceRequestFilters.to_json())

# convert the object into a dict
reports_generate_due_diligence_request_filters_dict = reports_generate_due_diligence_request_filters_instance.to_dict()
# create an instance of ReportsGenerateDueDiligenceRequestFilters from a dict
reports_generate_due_diligence_request_filters_from_dict = ReportsGenerateDueDiligenceRequestFilters.from_dict(reports_generate_due_diligence_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


