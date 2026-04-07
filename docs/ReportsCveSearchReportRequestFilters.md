# ReportsCveSearchReportRequestFilters

Optional filters to narrow the search results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vulnerable_component** | **str** | Wildcard pattern for filtering components. | [optional] 
**impacted_artifact** | **str** | Wildcard pattern for filtering artifacts. | [optional] 
**scan_date** | [**ReportsDateRange**](ReportsDateRange.md) |  | [optional] 
**runtime_filter** | **bool** | Filter by runtime context. | [optional] 
**ca_filter** | **bool** | Filter by contextual analysis results. | [optional] 

## Example

```python
from jfrog_client.models.reports_cve_search_report_request_filters import ReportsCveSearchReportRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsCveSearchReportRequestFilters from a JSON string
reports_cve_search_report_request_filters_instance = ReportsCveSearchReportRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsCveSearchReportRequestFilters.to_json())

# convert the object into a dict
reports_cve_search_report_request_filters_dict = reports_cve_search_report_request_filters_instance.to_dict()
# create an instance of ReportsCveSearchReportRequestFilters from a dict
reports_cve_search_report_request_filters_from_dict = ReportsCveSearchReportRequestFilters.from_dict(reports_cve_search_report_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


