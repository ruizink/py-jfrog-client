# SearchArchive200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchArchive200ResponseResultsInner]**](SearchArchive200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_archive200_response import SearchArchive200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchArchive200Response from a JSON string
search_archive200_response_instance = SearchArchive200Response.from_json(json)
# print the JSON string representation of the object
print(SearchArchive200Response.to_json())

# convert the object into a dict
search_archive200_response_dict = search_archive200_response_instance.to_dict()
# create an instance of SearchArchive200Response from a dict
search_archive200_response_from_dict = SearchArchive200Response.from_dict(search_archive200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


