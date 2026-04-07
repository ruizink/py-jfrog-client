# SearchVersions200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchVersions200ResponseResultsInner]**](SearchVersions200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_versions200_response import SearchVersions200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchVersions200Response from a JSON string
search_versions200_response_instance = SearchVersions200Response.from_json(json)
# print the JSON string representation of the object
print(SearchVersions200Response.to_json())

# convert the object into a dict
search_versions200_response_dict = search_versions200_response_instance.to_dict()
# create an instance of SearchVersions200Response from a dict
search_versions200_response_from_dict = SearchVersions200Response.from_dict(search_versions200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


