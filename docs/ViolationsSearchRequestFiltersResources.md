# ViolationsSearchRequestFiltersResources

Filter by specific resources.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List[ViolationsSearchRequestFiltersResourcesArtifactsInner]**](ViolationsSearchRequestFiltersResourcesArtifactsInner.md) |  | [optional] 
**builds** | [**List[ViolationsSearchRequestFiltersResourcesBuildsInner]**](ViolationsSearchRequestFiltersResourcesBuildsInner.md) |  | [optional] 
**release_bundles** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) |  | [optional] 
**release_bundles_v2** | [**List[IgnoreRuleFiltersBuildsInner]**](IgnoreRuleFiltersBuildsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.violations_search_request_filters_resources import ViolationsSearchRequestFiltersResources

# TODO update the JSON string below
json = "{}"
# create an instance of ViolationsSearchRequestFiltersResources from a JSON string
violations_search_request_filters_resources_instance = ViolationsSearchRequestFiltersResources.from_json(json)
# print the JSON string representation of the object
print(ViolationsSearchRequestFiltersResources.to_json())

# convert the object into a dict
violations_search_request_filters_resources_dict = violations_search_request_filters_resources_instance.to_dict()
# create an instance of ViolationsSearchRequestFiltersResources from a dict
violations_search_request_filters_resources_from_dict = ViolationsSearchRequestFiltersResources.from_dict(violations_search_request_filters_resources_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


