# ArtifactSummary200ResponseArtifactsInnerGeneral


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**pkg_type** | **str** |  | [optional] 
**sha256** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner_general import ArtifactSummary200ResponseArtifactsInnerGeneral

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInnerGeneral from a JSON string
artifact_summary200_response_artifacts_inner_general_instance = ArtifactSummary200ResponseArtifactsInnerGeneral.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInnerGeneral.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_general_dict = artifact_summary200_response_artifacts_inner_general_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInnerGeneral from a dict
artifact_summary200_response_artifacts_inner_general_from_dict = ArtifactSummary200ResponseArtifactsInnerGeneral.from_dict(artifact_summary200_response_artifacts_inner_general_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


