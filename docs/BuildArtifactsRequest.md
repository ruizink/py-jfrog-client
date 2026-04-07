# BuildArtifactsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | The build name for search by | 
**build_number** | **str** | The build number to search by, can be LATEST to search for the latest build number | 
**build_status** | **str** | Optionally search by latest build status (e.g \&quot;Released\&quot;) | [optional] 
**repos** | **List[str]** | Optionally refine search for specific repos, omit to search within all repositories | [optional] 
**archive_type** | **str** | The archive file type to return | 
**mappings** | [**List[ArchiveMapping]**](ArchiveMapping.md) | Optionally refine the search by providing a list of regexp patterns to search by | [optional] 

## Example

```python
from jfrog_client.models.build_artifacts_request import BuildArtifactsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BuildArtifactsRequest from a JSON string
build_artifacts_request_instance = BuildArtifactsRequest.from_json(json)
# print the JSON string representation of the object
print(BuildArtifactsRequest.to_json())

# convert the object into a dict
build_artifacts_request_dict = build_artifacts_request_instance.to_dict()
# create an instance of BuildArtifactsRequest from a dict
build_artifacts_request_from_dict = BuildArtifactsRequest.from_dict(build_artifacts_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


