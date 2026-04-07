# CompareBuilds200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_build** | [**GetBuildDependencyGraph200ResponseBuild**](GetBuildDependencyGraph200ResponseBuild.md) |  | 
**target_build** | [**GetBuildDependencyGraph200ResponseBuild**](GetBuildDependencyGraph200ResponseBuild.md) |  | 
**removed** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 
**added** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 
**unchanged** | [**List[CompareArtifacts200ResponseRemovedInner]**](CompareArtifacts200ResponseRemovedInner.md) |  | 

## Example

```python
from jfrog_client.models.compare_builds200_response import CompareBuilds200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CompareBuilds200Response from a JSON string
compare_builds200_response_instance = CompareBuilds200Response.from_json(json)
# print the JSON string representation of the object
print(CompareBuilds200Response.to_json())

# convert the object into a dict
compare_builds200_response_dict = compare_builds200_response_instance.to_dict()
# create an instance of CompareBuilds200Response from a dict
compare_builds200_response_from_dict = CompareBuilds200Response.from_dict(compare_builds200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


