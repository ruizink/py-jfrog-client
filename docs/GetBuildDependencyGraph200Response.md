# GetBuildDependencyGraph200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | [**GetBuildDependencyGraph200ResponseBuild**](GetBuildDependencyGraph200ResponseBuild.md) |  | 
**components** | [**List[GetBuildDependencyGraph200ResponseComponentsInner]**](GetBuildDependencyGraph200ResponseComponentsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_build_dependency_graph200_response import GetBuildDependencyGraph200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildDependencyGraph200Response from a JSON string
get_build_dependency_graph200_response_instance = GetBuildDependencyGraph200Response.from_json(json)
# print the JSON string representation of the object
print(GetBuildDependencyGraph200Response.to_json())

# convert the object into a dict
get_build_dependency_graph200_response_dict = get_build_dependency_graph200_response_instance.to_dict()
# create an instance of GetBuildDependencyGraph200Response from a dict
get_build_dependency_graph200_response_from_dict = GetBuildDependencyGraph200Response.from_dict(get_build_dependency_graph200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


