# ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** |  | [optional] 
**risk** | **str** |  | [optional] 
**risk_reason** | **str** |  | [optional] 
**is_eol** | **bool** |  | [optional] 
**eol_message** | **str** |  | [optional] 
**latest_version** | **str** |  | [optional] 
**newer_versions** | **int** |  | [optional] 
**cadence** | **int** |  | [optional] 
**commits** | **str** |  | [optional] 
**committers** | **str** |  | [optional] 
**released** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner_operational_risks_inner import ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner from a JSON string
artifact_summary200_response_artifacts_inner_operational_risks_inner_instance = ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_operational_risks_inner_dict = artifact_summary200_response_artifacts_inner_operational_risks_inner_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner from a dict
artifact_summary200_response_artifacts_inner_operational_risks_inner_from_dict = ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner.from_dict(artifact_summary200_response_artifacts_inner_operational_risks_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


