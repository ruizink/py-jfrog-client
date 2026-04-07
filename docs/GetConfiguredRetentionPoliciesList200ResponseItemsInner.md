# GetConfiguredRetentionPoliciesList200ResponseItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bundle_name** | **str** |  | [optional] 
**bundle_version** | **str** |  | [optional] 
**creation_time** | **int** |  | [optional] 
**distribution_time** | **int** |  | [optional] 
**keep** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_configured_retention_policies_list200_response_items_inner import GetConfiguredRetentionPoliciesList200ResponseItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetConfiguredRetentionPoliciesList200ResponseItemsInner from a JSON string
get_configured_retention_policies_list200_response_items_inner_instance = GetConfiguredRetentionPoliciesList200ResponseItemsInner.from_json(json)
# print the JSON string representation of the object
print(GetConfiguredRetentionPoliciesList200ResponseItemsInner.to_json())

# convert the object into a dict
get_configured_retention_policies_list200_response_items_inner_dict = get_configured_retention_policies_list200_response_items_inner_instance.to_dict()
# create an instance of GetConfiguredRetentionPoliciesList200ResponseItemsInner from a dict
get_configured_retention_policies_list200_response_items_inner_from_dict = GetConfiguredRetentionPoliciesList200ResponseItemsInner.from_dict(get_configured_retention_policies_list200_response_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


