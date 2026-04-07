# SearchBuildArtifactsRequestMappingsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input** | **str** | Regexp pattern to search by | [optional] 

## Example

```python
from jfrog_client.models.search_build_artifacts_request_mappings_inner import SearchBuildArtifactsRequestMappingsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBuildArtifactsRequestMappingsInner from a JSON string
search_build_artifacts_request_mappings_inner_instance = SearchBuildArtifactsRequestMappingsInner.from_json(json)
# print the JSON string representation of the object
print(SearchBuildArtifactsRequestMappingsInner.to_json())

# convert the object into a dict
search_build_artifacts_request_mappings_inner_dict = search_build_artifacts_request_mappings_inner_instance.to_dict()
# create an instance of SearchBuildArtifactsRequestMappingsInner from a dict
search_build_artifacts_request_mappings_inner_from_dict = SearchBuildArtifactsRequestMappingsInner.from_dict(search_build_artifacts_request_mappings_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


