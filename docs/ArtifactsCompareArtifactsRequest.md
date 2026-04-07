# ArtifactsCompareArtifactsRequest

Two artifact paths to diff (see Get Artifact Delta in Xray documentation).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_artifact_path** | **str** | Path of the source artifact | 
**target_artifact_path** | **str** | Path of the target artifact | 

## Example

```python
from jfrog_client.models.artifacts_compare_artifacts_request import ArtifactsCompareArtifactsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsCompareArtifactsRequest from a JSON string
artifacts_compare_artifacts_request_instance = ArtifactsCompareArtifactsRequest.from_json(json)
# print the JSON string representation of the object
print(ArtifactsCompareArtifactsRequest.to_json())

# convert the object into a dict
artifacts_compare_artifacts_request_dict = artifacts_compare_artifacts_request_instance.to_dict()
# create an instance of ArtifactsCompareArtifactsRequest from a dict
artifacts_compare_artifacts_request_from_dict = ArtifactsCompareArtifactsRequest.from_dict(artifacts_compare_artifacts_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


