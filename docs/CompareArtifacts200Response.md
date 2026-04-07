# CompareArtifacts200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_artifact** | [**CompareArtifacts200ResponseSourceArtifact**](CompareArtifacts200ResponseSourceArtifact.md) |  | 
**target_artifact** | [**CompareArtifacts200ResponseSourceArtifact**](CompareArtifacts200ResponseSourceArtifact.md) |  | 
**removed** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 
**added** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 
**unchanged** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 

## Example

```python
from jfrog_client.models.compare_artifacts200_response import CompareArtifacts200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CompareArtifacts200Response from a JSON string
compare_artifacts200_response_instance = CompareArtifacts200Response.from_json(json)
# print the JSON string representation of the object
print(CompareArtifacts200Response.to_json())

# convert the object into a dict
compare_artifacts200_response_dict = compare_artifacts200_response_instance.to_dict()
# create an instance of CompareArtifacts200Response from a dict
compare_artifacts200_response_from_dict = CompareArtifacts200Response.from_dict(compare_artifacts200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


