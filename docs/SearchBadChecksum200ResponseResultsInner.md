# SearchBadChecksum200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 
**server_md5** | **str** |  | [optional] 
**client_md5** | **str** | On missing checksum this element will be an empty string | [optional] 

## Example

```python
from jfrog_client.models.search_bad_checksum200_response_results_inner import SearchBadChecksum200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBadChecksum200ResponseResultsInner from a JSON string
search_bad_checksum200_response_results_inner_instance = SearchBadChecksum200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchBadChecksum200ResponseResultsInner.to_json())

# convert the object into a dict
search_bad_checksum200_response_results_inner_dict = search_bad_checksum200_response_results_inner_instance.to_dict()
# create an instance of SearchBadChecksum200ResponseResultsInner from a dict
search_bad_checksum200_response_results_inner_from_dict = SearchBadChecksum200ResponseResultsInner.from_dict(search_bad_checksum200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


