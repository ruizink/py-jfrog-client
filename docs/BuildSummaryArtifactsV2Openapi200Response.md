# BuildSummaryArtifactsV2Openapi200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | [**BuildSummaryArtifactsV2Openapi200ResponseBuild**](BuildSummaryArtifactsV2Openapi200ResponseBuild.md) |  | [optional] 
**issues** | [**List[BuildSummaryArtifactsV2Openapi200ResponseIssuesInner]**](BuildSummaryArtifactsV2Openapi200ResponseIssuesInner.md) | Security vulnerabilities found in the build. | [optional] 
**licenses** | [**List[ArtifactSummary200ResponseArtifactsInnerLicensesInner]**](ArtifactSummary200ResponseArtifactsInnerLicensesInner.md) | Licenses found in the build components. | [optional] 
**operational_risks** | **List[object]** | Operational risk assessments for build components. | [optional] 
**errors** | [**List[ReleaseBundleDetails404Response]**](ReleaseBundleDetails404Response.md) | Any errors encountered during scan or retrieval. | [optional] 

## Example

```python
from jfrog_client.models.build_summary_artifacts_v2_openapi200_response import BuildSummaryArtifactsV2Openapi200Response

# TODO update the JSON string below
json = "{}"
# create an instance of BuildSummaryArtifactsV2Openapi200Response from a JSON string
build_summary_artifacts_v2_openapi200_response_instance = BuildSummaryArtifactsV2Openapi200Response.from_json(json)
# print the JSON string representation of the object
print(BuildSummaryArtifactsV2Openapi200Response.to_json())

# convert the object into a dict
build_summary_artifacts_v2_openapi200_response_dict = build_summary_artifacts_v2_openapi200_response_instance.to_dict()
# create an instance of BuildSummaryArtifactsV2Openapi200Response from a dict
build_summary_artifacts_v2_openapi200_response_from_dict = BuildSummaryArtifactsV2Openapi200Response.from_dict(build_summary_artifacts_v2_openapi200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


