# ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**short_description** | **str** |  | [optional] 
**full_description** | **str** |  | [optional] 
**jfrog_research_severity** | **str** |  | [optional] 
**jfrog_research_severity_reasons** | [**List[ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformationJfrogResearchSeverityReasonsInner]**](ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformationJfrogResearchSeverityReasonsInner.md) |  | [optional] 
**remediation** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner_issues_inner_extended_information import ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation from a JSON string
artifact_summary200_response_artifacts_inner_issues_inner_extended_information_instance = ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_issues_inner_extended_information_dict = artifact_summary200_response_artifacts_inner_issues_inner_extended_information_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation from a dict
artifact_summary200_response_artifacts_inner_issues_inner_extended_information_from_dict = ArtifactSummary200ResponseArtifactsInnerIssuesInnerExtendedInformation.from_dict(artifact_summary200_response_artifacts_inner_issues_inner_extended_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


