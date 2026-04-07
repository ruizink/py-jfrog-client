# WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Filter type. Acceptable types depend on the resource type. | [optional] 
**value** | **object** | Filter value. Type depends on filter type: string for regex/path-regex/package-type/mime-type, object with IncludePatterns/ExcludePatterns arrays for ant-patterns/path-ant-patterns, or object with key/value for property. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_project_resources_resources_inner_filters_inner import WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner from a JSON string
watch_api_v2_request_project_resources_resources_inner_filters_inner_instance = WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner.to_json())

# convert the object into a dict
watch_api_v2_request_project_resources_resources_inner_filters_inner_dict = watch_api_v2_request_project_resources_resources_inner_filters_inner_instance.to_dict()
# create an instance of WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner from a dict
watch_api_v2_request_project_resources_resources_inner_filters_inner_from_dict = WatchApiV2RequestProjectResourcesResourcesInnerFiltersInner.from_dict(watch_api_v2_request_project_resources_resources_inner_filters_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


