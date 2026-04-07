# ArtifactSummary200ResponseArtifactsInnerIssuesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issue_id** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**issue_type** | **str** |  | [optional] 
**severity** | **str** |  | [optional] 
**provider** | **str** |  | [optional] 
**cves** | [**List[ArtifactSummary200ResponseArtifactsInnerIssuesInnerCvesInner]**](ArtifactSummary200ResponseArtifactsInnerIssuesInnerCvesInner.md) |  | [optional] 
**created** | **str** |  | [optional] 
**impact_path** | **List[str]** |  | [optional] 
**extended_information** | [**ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation**](ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation.md) |  | [optional] 
**component_physical_paths** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner_issues_inner import ArtifactSummary200ResponseArtifactsInnerIssuesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInnerIssuesInner from a JSON string
artifact_summary200_response_artifacts_inner_issues_inner_instance = ArtifactSummary200ResponseArtifactsInnerIssuesInner.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInnerIssuesInner.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_issues_inner_dict = artifact_summary200_response_artifacts_inner_issues_inner_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInnerIssuesInner from a dict
artifact_summary200_response_artifacts_inner_issues_inner_from_dict = ArtifactSummary200ResponseArtifactsInnerIssuesInner.from_dict(artifact_summary200_response_artifacts_inner_issues_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


