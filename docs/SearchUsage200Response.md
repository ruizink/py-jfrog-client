# SearchUsage200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchUsage200ResponseResultsInner]**](SearchUsage200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_usage200_response import SearchUsage200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchUsage200Response from a JSON string
search_usage200_response_instance = SearchUsage200Response.from_json(json)
# print the JSON string representation of the object
print(SearchUsage200Response.to_json())

# convert the object into a dict
search_usage200_response_dict = search_usage200_response_instance.to_dict()
# create an instance of SearchUsage200Response from a dict
search_usage200_response_from_dict = SearchUsage200Response.from_dict(search_usage200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


