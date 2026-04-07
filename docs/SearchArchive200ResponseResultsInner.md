# SearchArchive200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry** | **str** |  | [optional] 
**archive_uris** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.search_archive200_response_results_inner import SearchArchive200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchArchive200ResponseResultsInner from a JSON string
search_archive200_response_results_inner_instance = SearchArchive200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchArchive200ResponseResultsInner.to_json())

# convert the object into a dict
search_archive200_response_results_inner_dict = search_archive200_response_results_inner_instance.to_dict()
# create an instance of SearchArchive200ResponseResultsInner from a dict
search_archive200_response_results_inner_from_dict = SearchArchive200ResponseResultsInner.from_dict(search_archive200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


