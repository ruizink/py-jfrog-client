# CompareArtifacts200ResponseSourceArtifact


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**path** | **str** |  | 
**pkg_type** | **str** |  | 
**sha256** | **str** |  | 
**sha1** | **str** |  | 

## Example

```python
from jfrog_client.models.compare_artifacts200_response_source_artifact import CompareArtifacts200ResponseSourceArtifact

# TODO update the JSON string below
json = "{}"
# create an instance of CompareArtifacts200ResponseSourceArtifact from a JSON string
compare_artifacts200_response_source_artifact_instance = CompareArtifacts200ResponseSourceArtifact.from_json(json)
# print the JSON string representation of the object
print(CompareArtifacts200ResponseSourceArtifact.to_json())

# convert the object into a dict
compare_artifacts200_response_source_artifact_dict = compare_artifacts200_response_source_artifact_instance.to_dict()
# create an instance of CompareArtifacts200ResponseSourceArtifact from a dict
compare_artifacts200_response_source_artifact_from_dict = CompareArtifacts200ResponseSourceArtifact.from_dict(compare_artifacts200_response_source_artifact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


