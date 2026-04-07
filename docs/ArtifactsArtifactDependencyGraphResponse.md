# ArtifactsArtifactDependencyGraphResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifact** | [**ArtifactsArtifactDependencyGraphResponseArtifact**](ArtifactsArtifactDependencyGraphResponseArtifact.md) |  | [optional] 
**components** | [**List[ArtifactsDependencyGraphNode]**](ArtifactsDependencyGraphNode.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifacts_artifact_dependency_graph_response import ArtifactsArtifactDependencyGraphResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsArtifactDependencyGraphResponse from a JSON string
artifacts_artifact_dependency_graph_response_instance = ArtifactsArtifactDependencyGraphResponse.from_json(json)
# print the JSON string representation of the object
print(ArtifactsArtifactDependencyGraphResponse.to_json())

# convert the object into a dict
artifacts_artifact_dependency_graph_response_dict = artifacts_artifact_dependency_graph_response_instance.to_dict()
# create an instance of ArtifactsArtifactDependencyGraphResponse from a dict
artifacts_artifact_dependency_graph_response_from_dict = ArtifactsArtifactDependencyGraphResponse.from_dict(artifacts_artifact_dependency_graph_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


