# ArtifactSummary200ResponseArtifactsInnerLicensesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**more_info_url** | **List[str]** |  | [optional] 
**components** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_artifacts_inner_licenses_inner import ArtifactSummary200ResponseArtifactsInnerLicensesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseArtifactsInnerLicensesInner from a JSON string
artifact_summary200_response_artifacts_inner_licenses_inner_instance = ArtifactSummary200ResponseArtifactsInnerLicensesInner.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseArtifactsInnerLicensesInner.to_json())

# convert the object into a dict
artifact_summary200_response_artifacts_inner_licenses_inner_dict = artifact_summary200_response_artifacts_inner_licenses_inner_instance.to_dict()
# create an instance of ArtifactSummary200ResponseArtifactsInnerLicensesInner from a dict
artifact_summary200_response_artifacts_inner_licenses_inner_from_dict = ArtifactSummary200ResponseArtifactsInnerLicensesInner.from_dict(artifact_summary200_response_artifacts_inner_licenses_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


