# SearchAql200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | **List[object]** |  | [optional] 
**range** | [**SearchAql200ResponseRange**](SearchAql200ResponseRange.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_aql200_response import SearchAql200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchAql200Response from a JSON string
search_aql200_response_instance = SearchAql200Response.from_json(json)
# print the JSON string representation of the object
print(SearchAql200Response.to_json())

# convert the object into a dict
search_aql200_response_dict = search_aql200_response_instance.to_dict()
# create an instance of SearchAql200Response from a dict
search_aql200_response_from_dict = SearchAql200Response.from_dict(search_aql200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


