# BuildSummaryArtifactsV2Openapi200ResponseBuild

Build artifact details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**pkg_type** | **str** |  | [optional] 
**sha256** | **str** |  | [optional] 
**component_id** | **str** |  | [optional] 
**sha1** | **str** |  | [optional] 
**parent_sha256** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.build_summary_artifacts_v2_openapi200_response_build import BuildSummaryArtifactsV2Openapi200ResponseBuild

# TODO update the JSON string below
json = "{}"
# create an instance of BuildSummaryArtifactsV2Openapi200ResponseBuild from a JSON string
build_summary_artifacts_v2_openapi200_response_build_instance = BuildSummaryArtifactsV2Openapi200ResponseBuild.from_json(json)
# print the JSON string representation of the object
print(BuildSummaryArtifactsV2Openapi200ResponseBuild.to_json())

# convert the object into a dict
build_summary_artifacts_v2_openapi200_response_build_dict = build_summary_artifacts_v2_openapi200_response_build_instance.to_dict()
# create an instance of BuildSummaryArtifactsV2Openapi200ResponseBuild from a dict
build_summary_artifacts_v2_openapi200_response_build_from_dict = BuildSummaryArtifactsV2Openapi200ResponseBuild.from_dict(build_summary_artifacts_v2_openapi200_response_build_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


