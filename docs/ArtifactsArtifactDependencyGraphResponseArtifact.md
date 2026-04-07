# ArtifactsArtifactDependencyGraphResponseArtifact


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**pkg_type** | **str** |  | [optional] 
**sha256** | **str** |  | [optional] 
**sha1** | **str** |  | [optional] 
**component_id** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifacts_artifact_dependency_graph_response_artifact import ArtifactsArtifactDependencyGraphResponseArtifact

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsArtifactDependencyGraphResponseArtifact from a JSON string
artifacts_artifact_dependency_graph_response_artifact_instance = ArtifactsArtifactDependencyGraphResponseArtifact.from_json(json)
# print the JSON string representation of the object
print(ArtifactsArtifactDependencyGraphResponseArtifact.to_json())

# convert the object into a dict
artifacts_artifact_dependency_graph_response_artifact_dict = artifacts_artifact_dependency_graph_response_artifact_instance.to_dict()
# create an instance of ArtifactsArtifactDependencyGraphResponseArtifact from a dict
artifacts_artifact_dependency_graph_response_artifact_from_dict = ArtifactsArtifactDependencyGraphResponseArtifact.from_dict(artifacts_artifact_dependency_graph_response_artifact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


