# GetCveSearchReportDetailsByIdRequestFilters

Optional filters to narrow the report results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**impacted_artifact** | **str** | Wildcard pattern for filtering artifact names. | [optional] 
**scan_date** | **datetime** | Filter by scan date (RFC 3339 timestamp). | [optional] 
**vulnerable_component** | **str** | Wildcard pattern for filtering component names. | [optional] 

## Example

```python
from jfrog_client.models.get_cve_search_report_details_by_id_request_filters import GetCveSearchReportDetailsByIdRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportDetailsByIdRequestFilters from a JSON string
get_cve_search_report_details_by_id_request_filters_instance = GetCveSearchReportDetailsByIdRequestFilters.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportDetailsByIdRequestFilters.to_json())

# convert the object into a dict
get_cve_search_report_details_by_id_request_filters_dict = get_cve_search_report_details_by_id_request_filters_instance.to_dict()
# create an instance of GetCveSearchReportDetailsByIdRequestFilters from a dict
get_cve_search_report_details_by_id_request_filters_from_dict = GetCveSearchReportDetailsByIdRequestFilters.from_dict(get_cve_search_report_details_by_id_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


