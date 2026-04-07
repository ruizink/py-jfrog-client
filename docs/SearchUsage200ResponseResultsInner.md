# SearchUsage200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 
**last_downloaded** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.search_usage200_response_results_inner import SearchUsage200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchUsage200ResponseResultsInner from a JSON string
search_usage200_response_results_inner_instance = SearchUsage200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchUsage200ResponseResultsInner.to_json())

# convert the object into a dict
search_usage200_response_results_inner_dict = search_usage200_response_results_inner_instance.to_dict()
# create an instance of SearchUsage200ResponseResultsInner from a dict
search_usage200_response_results_inner_from_dict = SearchUsage200ResponseResultsInner.from_dict(search_usage200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


