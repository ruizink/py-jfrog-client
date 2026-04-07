# SearchPattern200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository_uri** | **str** |  | [optional] 
**source_pattern** | **str** |  | [optional] 
**files** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.search_pattern200_response import SearchPattern200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchPattern200Response from a JSON string
search_pattern200_response_instance = SearchPattern200Response.from_json(json)
# print the JSON string representation of the object
print(SearchPattern200Response.to_json())

# convert the object into a dict
search_pattern200_response_dict = search_pattern200_response_instance.to_dict()
# create an instance of SearchPattern200Response from a dict
search_pattern200_response_from_dict = SearchPattern200Response.from_dict(search_pattern200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


