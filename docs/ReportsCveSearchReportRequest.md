# ReportsCveSearchReportRequest

Request body for generating a CVE Search Report. The CVE and resources scope are required. Filters are optional. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** | The CVE identifier to search for (e.g., CVE-2021-45046). | 
**name** | **str** | Display name for the report. | [optional] 
**resources** | [**ReportsResourcesBlock**](ReportsResourcesBlock.md) |  | 
**filters** | [**ReportsCveSearchReportRequestFilters**](ReportsCveSearchReportRequestFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_cve_search_report_request import ReportsCveSearchReportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsCveSearchReportRequest from a JSON string
reports_cve_search_report_request_instance = ReportsCveSearchReportRequest.from_json(json)
# print the JSON string representation of the object
print(ReportsCveSearchReportRequest.to_json())

# convert the object into a dict
reports_cve_search_report_request_dict = reports_cve_search_report_request_instance.to_dict()
# create an instance of ReportsCveSearchReportRequest from a dict
reports_cve_search_report_request_from_dict = ReportsCveSearchReportRequest.from_dict(reports_cve_search_report_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


