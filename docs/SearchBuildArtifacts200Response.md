# SearchBuildArtifacts200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchBuildArtifacts200ResponseResultsInner]**](SearchBuildArtifacts200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_build_artifacts200_response import SearchBuildArtifacts200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBuildArtifacts200Response from a JSON string
search_build_artifacts200_response_instance = SearchBuildArtifacts200Response.from_json(json)
# print the JSON string representation of the object
print(SearchBuildArtifacts200Response.to_json())

# convert the object into a dict
search_build_artifacts200_response_dict = search_build_artifacts200_response_instance.to_dict()
# create an instance of SearchBuildArtifacts200Response from a dict
search_build_artifacts200_response_from_dict = SearchBuildArtifacts200Response.from_dict(search_build_artifacts200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


