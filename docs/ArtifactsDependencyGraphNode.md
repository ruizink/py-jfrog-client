# ArtifactsDependencyGraphNode

Recursive dependency node (nested components arrays in responses).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_name** | **str** |  | [optional] 
**component_id** | **str** |  | [optional] 
**package_type** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**created** | **str** |  | [optional] 
**modified** | **str** |  | [optional] 
**components** | [**List[ArtifactsDependencyGraphNode]**](ArtifactsDependencyGraphNode.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifacts_dependency_graph_node import ArtifactsDependencyGraphNode

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsDependencyGraphNode from a JSON string
artifacts_dependency_graph_node_instance = ArtifactsDependencyGraphNode.from_json(json)
# print the JSON string representation of the object
print(ArtifactsDependencyGraphNode.to_json())

# convert the object into a dict
artifacts_dependency_graph_node_dict = artifacts_dependency_graph_node_instance.to_dict()
# create an instance of ArtifactsDependencyGraphNode from a dict
artifacts_dependency_graph_node_from_dict = ArtifactsDependencyGraphNode.from_dict(artifacts_dependency_graph_node_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


