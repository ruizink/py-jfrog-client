# ViolationsSearchRequest

Request body for searching violations. Contains a filters object for narrowing results and a pagination object for controlling sort order and paging. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filters** | [**ViolationsSearchRequestFilters**](ViolationsSearchRequestFilters.md) |  | [optional] 
**pagination** | [**ViolationsSearchRequestPagination**](ViolationsSearchRequestPagination.md) |  | [optional] 

## Example

```python
from jfrog_client.models.violations_search_request import ViolationsSearchRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ViolationsSearchRequest from a JSON string
violations_search_request_instance = ViolationsSearchRequest.from_json(json)
# print the JSON string representation of the object
print(ViolationsSearchRequest.to_json())

# convert the object into a dict
violations_search_request_dict = violations_search_request_instance.to_dict()
# create an instance of ViolationsSearchRequest from a dict
violations_search_request_from_dict = ViolationsSearchRequest.from_dict(violations_search_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


