# SearchCreation200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchCreation200ResponseResultsInner]**](SearchCreation200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_creation200_response import SearchCreation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchCreation200Response from a JSON string
search_creation200_response_instance = SearchCreation200Response.from_json(json)
# print the JSON string representation of the object
print(SearchCreation200Response.to_json())

# convert the object into a dict
search_creation200_response_dict = search_creation200_response_instance.to_dict()
# create an instance of SearchCreation200Response from a dict
search_creation200_response_from_dict = SearchCreation200Response.from_dict(search_creation200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


