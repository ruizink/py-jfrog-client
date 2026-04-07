# GetCveSearchReportsList200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_reports** | **int** |  | 
**reports** | [**List[GetCveSearchReportsList200ResponseReportsInner]**](GetCveSearchReportsList200ResponseReportsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_cve_search_reports_list200_response import GetCveSearchReportsList200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportsList200Response from a JSON string
get_cve_search_reports_list200_response_instance = GetCveSearchReportsList200Response.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportsList200Response.to_json())

# convert the object into a dict
get_cve_search_reports_list200_response_dict = get_cve_search_reports_list200_response_instance.to_dict()
# create an instance of GetCveSearchReportsList200Response from a dict
get_cve_search_reports_list200_response_from_dict = GetCveSearchReportsList200Response.from_dict(get_cve_search_reports_list200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


