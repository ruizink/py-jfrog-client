# GetBuildDependencyGraphRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | The build name. | 
**build_number** | **str** | The build number/version. | 
**artifactory_id** | **str** | Optional Artifactory instance ID. | [optional] 
**build_repo** | **str** | Build repository name. | [optional] 
**project** | **str** | Project key (optional). | [optional] 

## Example

```python
from jfrog_client.models.get_build_dependency_graph_request import GetBuildDependencyGraphRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildDependencyGraphRequest from a JSON string
get_build_dependency_graph_request_instance = GetBuildDependencyGraphRequest.from_json(json)
# print the JSON string representation of the object
print(GetBuildDependencyGraphRequest.to_json())

# convert the object into a dict
get_build_dependency_graph_request_dict = get_build_dependency_graph_request_instance.to_dict()
# create an instance of GetBuildDependencyGraphRequest from a dict
get_build_dependency_graph_request_from_dict = GetBuildDependencyGraphRequest.from_dict(get_build_dependency_graph_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


