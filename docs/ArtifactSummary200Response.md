# ArtifactSummary200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List[ArtifactSummary200ResponseArtifactsInner]**](ArtifactSummary200ResponseArtifactsInner.md) | Array of artifact summaries. | [optional] 
**errors** | [**List[ArtifactSummary200ResponseErrorsInner]**](ArtifactSummary200ResponseErrorsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response import ArtifactSummary200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200Response from a JSON string
artifact_summary200_response_instance = ArtifactSummary200Response.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200Response.to_json())

# convert the object into a dict
artifact_summary200_response_dict = artifact_summary200_response_instance.to_dict()
# create an instance of ArtifactSummary200Response from a dict
artifact_summary200_response_from_dict = ArtifactSummary200Response.from_dict(artifact_summary200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


