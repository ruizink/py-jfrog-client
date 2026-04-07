# ListSupportBundles200ResponseBundlesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**created** | **datetime** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.list_support_bundles200_response_bundles_inner import ListSupportBundles200ResponseBundlesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ListSupportBundles200ResponseBundlesInner from a JSON string
list_support_bundles200_response_bundles_inner_instance = ListSupportBundles200ResponseBundlesInner.from_json(json)
# print the JSON string representation of the object
print(ListSupportBundles200ResponseBundlesInner.to_json())

# convert the object into a dict
list_support_bundles200_response_bundles_inner_dict = list_support_bundles200_response_bundles_inner_instance.to_dict()
# create an instance of ListSupportBundles200ResponseBundlesInner from a dict
list_support_bundles200_response_bundles_inner_from_dict = ListSupportBundles200ResponseBundlesInner.from_dict(list_support_bundles200_response_bundles_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


