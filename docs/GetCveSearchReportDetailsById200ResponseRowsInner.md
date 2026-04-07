# GetCveSearchReportDetailsById200ResponseRowsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vulnerable_component** | **str** |  | 
**impacted_artifact** | **str** |  | 
**path** | **str** |  | 
**fixed_versions** | **List[str]** |  | 
**artifact_scan_time** | **str** |  | 
**package_type** | **str** |  | 
**issue_id** | **str** |  | 
**summary** | **str** |  | 
**severity** | **str** |  | 
**cvss_v2_score** | **float** |  | [optional] 
**cvss_v2_vector** | **str** |  | [optional] 
**cvss_v3_score** | **float** |  | 
**cvss_v3_vector** | **str** |  | 
**provider** | **str** |  | 
**description** | **str** |  | 
**references** | **List[str]** |  | 
**published** | **str** |  | 

## Example

```python
from jfrog_client.models.get_cve_search_report_details_by_id200_response_rows_inner import GetCveSearchReportDetailsById200ResponseRowsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportDetailsById200ResponseRowsInner from a JSON string
get_cve_search_report_details_by_id200_response_rows_inner_instance = GetCveSearchReportDetailsById200ResponseRowsInner.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportDetailsById200ResponseRowsInner.to_json())

# convert the object into a dict
get_cve_search_report_details_by_id200_response_rows_inner_dict = get_cve_search_report_details_by_id200_response_rows_inner_instance.to_dict()
# create an instance of GetCveSearchReportDetailsById200ResponseRowsInner from a dict
get_cve_search_report_details_by_id200_response_rows_inner_from_dict = GetCveSearchReportDetailsById200ResponseRowsInner.from_dict(get_cve_search_report_details_by_id200_response_rows_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


