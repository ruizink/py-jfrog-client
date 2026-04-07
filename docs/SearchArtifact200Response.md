# SearchArtifact200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchArtifact200ResponseResultsInner]**](SearchArtifact200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_artifact200_response import SearchArtifact200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchArtifact200Response from a JSON string
search_artifact200_response_instance = SearchArtifact200Response.from_json(json)
# print the JSON string representation of the object
print(SearchArtifact200Response.to_json())

# convert the object into a dict
search_artifact200_response_dict = search_artifact200_response_instance.to_dict()
# create an instance of SearchArtifact200Response from a dict
search_artifact200_response_from_dict = SearchArtifact200Response.from_dict(search_artifact200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


