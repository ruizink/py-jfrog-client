# WatchApiV2RequestProjectResourcesResourcesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Type of the resource to watch. | 
**name** | **str** | Name of the resource. | [optional] 
**bin_mgr_id** | **str** | Binary manager ID. Omit or set to default. | [optional] 
**repo_type** | **str** | Type of repository (local or remote). Relevant only for repository resources. | [optional] 
**build_repo** | **str** | The build or bundle repository. Relevant only for resources under a project. | [optional] 
**project** | **str** | Project key for the resource. | [optional] 
**filters** | [**List[WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner]**](WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner.md) | Filters to apply to the resource. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_project_resources_resources_inner import WatchApiV2RequestProjectResourcesResourcesInner

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestProjectResourcesResourcesInner from a JSON string
watch_api_v2_request_project_resources_resources_inner_instance = WatchApiV2RequestProjectResourcesResourcesInner.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestProjectResourcesResourcesInner.to_json())

# convert the object into a dict
watch_api_v2_request_project_resources_resources_inner_dict = watch_api_v2_request_project_resources_resources_inner_instance.to_dict()
# create an instance of WatchApiV2RequestProjectResourcesResourcesInner from a dict
watch_api_v2_request_project_resources_resources_inner_from_dict = WatchApiV2RequestProjectResourcesResourcesInner.from_dict(watch_api_v2_request_project_resources_resources_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


