# ReportsGetListRequestBodyFilters

Filter criteria for the reports list.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Filter by report name (wildcard patterns supported). | [optional] 
**type** | **str** | Filter by report type. | [optional] 
**status** | **List[str]** | Filter by report status. | [optional] 
**author** | **str** | Filter by report author. | [optional] 
**start_time_range** | [**ReportsGetListRequestBodyFiltersStartTimeRange**](ReportsGetListRequestBodyFiltersStartTimeRange.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_get_list_request_body_filters import ReportsGetListRequestBodyFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGetListRequestBodyFilters from a JSON string
reports_get_list_request_body_filters_instance = ReportsGetListRequestBodyFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGetListRequestBodyFilters.to_json())

# convert the object into a dict
reports_get_list_request_body_filters_dict = reports_get_list_request_body_filters_instance.to_dict()
# create an instance of ReportsGetListRequestBodyFilters from a dict
reports_get_list_request_body_filters_from_dict = ReportsGetListRequestBodyFilters.from_dict(reports_get_list_request_body_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


