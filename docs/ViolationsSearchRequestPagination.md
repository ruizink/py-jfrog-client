# ViolationsSearchRequestPagination

Pagination and sorting parameters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_by** | **str** | Sort field. Valid values: created, summary, severity, type, watcher_name, issue_id. | [optional] 
**direction** | **str** | Sort direction. | [optional] 
**limit** | **int** | Maximum number of items to return. Default: 25. | [optional] 
**offset** | **int** | Page offset. Default: 1. | [optional] 

## Example

```python
from jfrog_client.models.violations_search_request_pagination import ViolationsSearchRequestPagination

# TODO update the JSON string below
json = "{}"
# create an instance of ViolationsSearchRequestPagination from a JSON string
violations_search_request_pagination_instance = ViolationsSearchRequestPagination.from_json(json)
# print the JSON string representation of the object
print(ViolationsSearchRequestPagination.to_json())

# convert the object into a dict
violations_search_request_pagination_dict = violations_search_request_pagination_instance.to_dict()
# create an instance of ViolationsSearchRequestPagination from a dict
violations_search_request_pagination_from_dict = ViolationsSearchRequestPagination.from_dict(violations_search_request_pagination_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


