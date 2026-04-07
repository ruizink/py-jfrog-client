# GetCveSearchReportDetailsByIdRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filters** | [**GetCveSearchReportDetailsByIdRequestFilters**](GetCveSearchReportDetailsByIdRequestFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_cve_search_report_details_by_id_request import GetCveSearchReportDetailsByIdRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetCveSearchReportDetailsByIdRequest from a JSON string
get_cve_search_report_details_by_id_request_instance = GetCveSearchReportDetailsByIdRequest.from_json(json)
# print the JSON string representation of the object
print(GetCveSearchReportDetailsByIdRequest.to_json())

# convert the object into a dict
get_cve_search_report_details_by_id_request_dict = get_cve_search_report_details_by_id_request_instance.to_dict()
# create an instance of GetCveSearchReportDetailsByIdRequest from a dict
get_cve_search_report_details_by_id_request_from_dict = GetCveSearchReportDetailsByIdRequest.from_dict(get_cve_search_report_details_by_id_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


