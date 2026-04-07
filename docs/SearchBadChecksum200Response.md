# SearchBadChecksum200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchBadChecksum200ResponseResultsInner]**](SearchBadChecksum200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_bad_checksum200_response import SearchBadChecksum200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBadChecksum200Response from a JSON string
search_bad_checksum200_response_instance = SearchBadChecksum200Response.from_json(json)
# print the JSON string representation of the object
print(SearchBadChecksum200Response.to_json())

# convert the object into a dict
search_bad_checksum200_response_dict = search_bad_checksum200_response_instance.to_dict()
# create an instance of SearchBadChecksum200Response from a dict
search_bad_checksum200_response_from_dict = SearchBadChecksum200Response.from_dict(search_bad_checksum200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


