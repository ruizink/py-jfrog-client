# GetBuildDependencyGraph200ResponseComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_name** | **str** |  | 
**component_id** | **str** |  | 
**package_type** | **str** |  | 
**created** | **str** |  | 

## Example

```python
from jfrog_client.models.get_build_dependency_graph200_response_components_inner import GetBuildDependencyGraph200ResponseComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildDependencyGraph200ResponseComponentsInner from a JSON string
get_build_dependency_graph200_response_components_inner_instance = GetBuildDependencyGraph200ResponseComponentsInner.from_json(json)
# print the JSON string representation of the object
print(GetBuildDependencyGraph200ResponseComponentsInner.to_json())

# convert the object into a dict
get_build_dependency_graph200_response_components_inner_dict = get_build_dependency_graph200_response_components_inner_instance.to_dict()
# create an instance of GetBuildDependencyGraph200ResponseComponentsInner from a dict
get_build_dependency_graph200_response_components_inner_from_dict = GetBuildDependencyGraph200ResponseComponentsInner.from_dict(get_build_dependency_graph200_response_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


