# SearchGavc200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchGavc200ResponseResultsInner]**](SearchGavc200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_gavc200_response import SearchGavc200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGavc200Response from a JSON string
search_gavc200_response_instance = SearchGavc200Response.from_json(json)
# print the JSON string representation of the object
print(SearchGavc200Response.to_json())

# convert the object into a dict
search_gavc200_response_dict = search_gavc200_response_instance.to_dict()
# create an instance of SearchGavc200Response from a dict
search_gavc200_response_from_dict = SearchGavc200Response.from_dict(search_gavc200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


