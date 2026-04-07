# ArtifactSummary200ResponseArtifactsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general** | [**ArtifactSummary200ResponseArtifactsInnerGeneral**](ArtifactSummary200ResponseArtifactsInnerGeneral.md) |  | [optional] 
**issues** | [**List[ArtifactSummary200ResponseArtifactsInnerIssuesInner]**](ArtifactSummary200ResponseArtifactsInnerIssuesInner.md) |  | [optional] 
**licenses** | [**List[ArtifactSummary200ResponseArtifactsInnerLicensesInner]**](ArtifactSummary200ResponseArtifactsInnerLicensesInner.md) |  | [optional] 
**operational_risks** | [**List[ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner]**](ArtifactSummary200ResponseArtifactsInnerOperationalRisksInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner import ArtifactSummary200ResponseArtifactsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInner from a JSON string
artifact_summary200_response_artifacts_inner_instance = ArtifactSummary200ResponseArtifactsInner.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInner.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_dict = artifact_summary200_response_artifacts_inner_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInner from a dict
artifact_summary200_response_artifacts_inner_from_dict = ArtifactSummary200ResponseArtifactsInner.from_dict(artifact_summary200_response_artifacts_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


