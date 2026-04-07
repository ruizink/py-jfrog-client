# GetCveSearchReportsList200ResponseReportsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**cve** | **str** |  | 
**name** | **str** |  | 
**status** | **str** |  | 
**total_artifacts** | **int** |  | 
**num_of_processed_artifacts** | **int** |  | 
**progress** | **int** |  | 
**number_of_rows** | **int** |  | 
**start_time** | **str** |  | 
**end_time** | **str** |  | 
**author** | **str** |  | 

## Example

```python
from jfrog_client.models.get_cve_search_reports_list200_response_reports_inner import GetCveSearchReportsList200ResponseReportsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportsList200ResponseReportsInner from a JSON string
get_cve_search_reports_list200_response_reports_inner_instance = GetCveSearchReportsList200ResponseReportsInner.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportsList200ResponseReportsInner.to_json())

# convert the object into a dict
get_cve_search_reports_list200_response_reports_inner_dict = get_cve_search_reports_list200_response_reports_inner_instance.to_dict()
# create an instance of GetCveSearchReportsList200ResponseReportsInner from a dict
get_cve_search_reports_list200_response_reports_inner_from_dict = GetCveSearchReportsList200ResponseReportsInner.from_dict(get_cve_search_reports_list200_response_reports_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


