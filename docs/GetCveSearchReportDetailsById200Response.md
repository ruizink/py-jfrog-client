# GetCveSearchReportDetailsById200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** |  | 
**total_rows** | **int** |  | 
**produced_at** | **str** |  | 
**created_by** | **str** |  | 
**rows** | [**List[GetCveSearchReportDetailsById200ResponseRowsInner]**](GetCveSearchReportDetailsById200ResponseRowsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_cve_search_report_details_by_id200_response import GetCveSearchReportDetailsById200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportDetailsById200Response from a JSON string
get_cve_search_report_details_by_id200_response_instance = GetCveSearchReportDetailsById200Response.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportDetailsById200Response.to_json())

# convert the object into a dict
get_cve_search_report_details_by_id200_response_dict = get_cve_search_report_details_by_id200_response_instance.to_dict()
# create an instance of GetCveSearchReportDetailsById200Response from a dict
get_cve_search_report_details_by_id200_response_from_dict = GetCveSearchReportDetailsById200Response.from_dict(get_cve_search_report_details_by_id200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


