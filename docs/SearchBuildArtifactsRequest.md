# SearchBuildArtifactsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | The build name for search by | [optional] 
**build_number** | **str** | The build number to search by, can be LATEST to search for the latest build number | [optional] 
**build_status** | **str** | Optionally search by latest build status (e.g \&quot;Released\&quot;) | [optional] 
**repos** | **List[str]** | Optionally refine search for specific repos, omit to search within all repositories | [optional] 
**mappings** | [**List[SearchBuildArtifactsRequestMappingsInner]**](SearchBuildArtifactsRequestMappingsInner.md) | Optionally refine the search by providing a list of regexp patterns to search by | [optional] 

## Example

```python
from jfrog_client.models.search_build_artifacts_request import SearchBuildArtifactsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBuildArtifactsRequest from a JSON string
search_build_artifacts_request_instance = SearchBuildArtifactsRequest.from_json(json)
# print the JSON string representation of the object
print(SearchBuildArtifactsRequest.to_json())

# convert the object into a dict
search_build_artifacts_request_dict = search_build_artifacts_request_instance.to_dict()
# create an instance of SearchBuildArtifactsRequest from a dict
search_build_artifacts_request_from_dict = SearchBuildArtifactsRequest.from_dict(search_build_artifacts_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


