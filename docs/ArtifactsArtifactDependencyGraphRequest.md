# ArtifactsArtifactDependencyGraphRequest

Artifact locator for dependency graph (see JFrog documentation). Path is the artifact path (/artifactory-name/repo-name/path); default artifactory name is often 'Artifactory'.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** | Full path of the artifact, e.g. /default/my-repo/myArtifact/3.14 | 

## Example

```python
from jfrog_client.models.artifacts_artifact_dependency_graph_request import ArtifactsArtifactDependencyGraphRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsArtifactDependencyGraphRequest from a JSON string
artifacts_artifact_dependency_graph_request_instance = ArtifactsArtifactDependencyGraphRequest.from_json(json)
# print the JSON string representation of the object
print(ArtifactsArtifactDependencyGraphRequest.to_json())

# convert the object into a dict
artifacts_artifact_dependency_graph_request_dict = artifacts_artifact_dependency_graph_request_instance.to_dict()
# create an instance of ArtifactsArtifactDependencyGraphRequest from a dict
artifacts_artifact_dependency_graph_request_from_dict = ArtifactsArtifactDependencyGraphRequest.from_dict(artifacts_artifact_dependency_graph_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


