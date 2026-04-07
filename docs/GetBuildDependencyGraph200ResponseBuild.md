# GetBuildDependencyGraph200ResponseBuild


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**path** | **str** |  | 
**pkg_type** | **str** |  | 
**sha256** | **str** |  | 
**component_id** | **str** |  | 

## Example

```python
from jfrog_client.models.get_build_dependency_graph200_response_build import GetBuildDependencyGraph200ResponseBuild

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildDependencyGraph200ResponseBuild from a JSON string
get_build_dependency_graph200_response_build_instance = GetBuildDependencyGraph200ResponseBuild.from_json(json)
# print the JSON string representation of the object
print(GetBuildDependencyGraph200ResponseBuild.to_json())

# convert the object into a dict
get_build_dependency_graph200_response_build_dict = get_build_dependency_graph200_response_build_instance.to_dict()
# create an instance of GetBuildDependencyGraph200ResponseBuild from a dict
get_build_dependency_graph200_response_build_from_dict = GetBuildDependencyGraph200ResponseBuild.from_dict(get_build_dependency_graph200_response_build_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


