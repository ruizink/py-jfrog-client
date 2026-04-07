# BuildSummaryArtifactsV2Openapi200ResponseIssuesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issue_id** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**issue_type** | **str** |  | [optional] 
**severity** | **str** |  | [optional] 
**provider** | **str** |  | [optional] 
**cves** | [**List[BuildSummaryArtifactsV2Openapi200ResponseIssuesInnerCvesInner]**](BuildSummaryArtifactsV2Openapi200ResponseIssuesInnerCvesInner.md) |  | [optional] 
**created** | **str** |  | [optional] 
**impact_path** | **List[str]** |  | [optional] 
**components** | [**List[ArtifactSummaryArtifactsV2Openapi200ResponseArtifactsInnerIssuesInnerComponentsInner]**](ArtifactSummaryArtifactsV2Openapi200ResponseArtifactsInnerIssuesInnerComponentsInner.md) | Component-level details (v2 only). | [optional] 

## Example

```python
from jfrog_client.models.build_summary_artifacts_v2_openapi200_response_issues_inner import BuildSummaryArtifactsV2Openapi200ResponseIssuesInner

# TODO update the JSON string below
json = "{}"
# create an instance of BuildSummaryArtifactsV2Openapi200ResponseIssuesInner from a JSON string
build_summary_artifacts_v2_openapi200_response_issues_inner_instance = BuildSummaryArtifactsV2Openapi200ResponseIssuesInner.from_json(json)
# print the JSON string representation of the object
print(BuildSummaryArtifactsV2Openapi200ResponseIssuesInner.to_json())

# convert the object into a dict
build_summary_artifacts_v2_openapi200_response_issues_inner_dict = build_summary_artifacts_v2_openapi200_response_issues_inner_instance.to_dict()
# create an instance of BuildSummaryArtifactsV2Openapi200ResponseIssuesInner from a dict
build_summary_artifacts_v2_openapi200_response_issues_inner_from_dict = BuildSummaryArtifactsV2Openapi200ResponseIssuesInner.from_dict(build_summary_artifacts_v2_openapi200_response_issues_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


