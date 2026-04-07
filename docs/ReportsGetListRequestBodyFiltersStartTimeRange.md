# ReportsGetListRequestBodyFiltersStartTimeRange

Filter by report start time range.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **datetime** |  | [optional] 
**end** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_get_list_request_body_filters_start_time_range import ReportsGetListRequestBodyFiltersStartTimeRange

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGetListRequestBodyFiltersStartTimeRange from a JSON string
reports_get_list_request_body_filters_start_time_range_instance = ReportsGetListRequestBodyFiltersStartTimeRange.from_json(json)
# print the JSON string representation of the object
print(ReportsGetListRequestBodyFiltersStartTimeRange.to_json())

# convert the object into a dict
reports_get_list_request_body_filters_start_time_range_dict = reports_get_list_request_body_filters_start_time_range_instance.to_dict()
# create an instance of ReportsGetListRequestBodyFiltersStartTimeRange from a dict
reports_get_list_request_body_filters_start_time_range_from_dict = ReportsGetListRequestBodyFiltersStartTimeRange.from_dict(reports_get_list_request_body_filters_start_time_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


