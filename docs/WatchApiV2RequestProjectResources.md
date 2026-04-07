# WatchApiV2RequestProjectResources

Resources the Watch monitors and their filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resources** | [**List[WatchApiV2RequestProjectResourcesResourcesInner]**](WatchApiV2RequestProjectResourcesResourcesInner.md) | List of resources to watch. | [optional] 
**global_filters** | [**List[WatchApiV2RequestProjectResourcesGlobalFiltersInner]**](WatchApiV2RequestProjectResourcesGlobalFiltersInner.md) | Global filters applied across all resources. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_project_resources import WatchApiV2RequestProjectResources

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestProjectResources from a JSON string
watch_api_v2_request_project_resources_instance = WatchApiV2RequestProjectResources.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestProjectResources.to_json())

# convert the object into a dict
watch_api_v2_request_project_resources_dict = watch_api_v2_request_project_resources_instance.to_dict()
# create an instance of WatchApiV2RequestProjectResources from a dict
watch_api_v2_request_project_resources_from_dict = WatchApiV2RequestProjectResources.from_dict(watch_api_v2_request_project_resources_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


