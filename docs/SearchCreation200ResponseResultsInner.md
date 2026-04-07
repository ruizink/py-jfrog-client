# SearchCreation200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 
**created** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.search_creation200_response_results_inner import SearchCreation200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchCreation200ResponseResultsInner from a JSON string
search_creation200_response_results_inner_instance = SearchCreation200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchCreation200ResponseResultsInner.to_json())

# convert the object into a dict
search_creation200_response_results_inner_dict = search_creation200_response_results_inner_instance.to_dict()
# create an instance of SearchCreation200ResponseResultsInner from a dict
search_creation200_response_results_inner_from_dict = SearchCreation200ResponseResultsInner.from_dict(search_creation200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


