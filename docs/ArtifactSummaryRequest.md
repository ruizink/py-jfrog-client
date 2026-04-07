# ArtifactSummaryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paths** | **List[str]** | Array of artifact paths. The path must start with the artifactory_id (default for Xray 3.x).  | [optional] 
**checksums** | **List[str]** | Array of SHA-256 or SHA-1 checksums. Ignored if paths is provided. | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary_request import ArtifactSummaryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummaryRequest from a JSON string
artifact_summary_request_instance = ArtifactSummaryRequest.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummaryRequest.to_json())

# convert the object into a dict
artifact_summary_request_dict = artifact_summary_request_instance.to_dict()
# create an instance of ArtifactSummaryRequest from a dict
artifact_summary_request_from_dict = ArtifactSummaryRequest.from_dict(artifact_summary_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


