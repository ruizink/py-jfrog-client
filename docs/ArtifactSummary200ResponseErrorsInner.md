# ArtifactSummary200ResponseErrorsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **str** |  | [optional] 
**error** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_summary200_response_errors_inner import ArtifactSummary200ResponseErrorsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactSummary200ResponseErrorsInner from a JSON string
artifact_summary200_response_errors_inner_instance = ArtifactSummary200ResponseErrorsInner.from_json(json)
# print the JSON string representation of the object
print(ArtifactSummary200ResponseErrorsInner.to_json())

# convert the object into a dict
artifact_summary200_response_errors_inner_dict = artifact_summary200_response_errors_inner_instance.to_dict()
# create an instance of ArtifactSummary200ResponseErrorsInner from a dict
artifact_summary200_response_errors_inner_from_dict = ArtifactSummary200ResponseErrorsInner.from_dict(artifact_summary200_response_errors_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


