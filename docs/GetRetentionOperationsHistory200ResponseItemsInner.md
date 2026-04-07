# GetRetentionOperationsHistory200ResponseItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bundle_name** | **str** |  | [optional] 
**bundle_version** | **str** |  | [optional] 
**operation** | **str** |  | [optional] 
**created** | **datetime** |  | [optional] 
**created_by** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_retention_operations_history200_response_items_inner import GetRetentionOperationsHistory200ResponseItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetRetentionOperationsHistory200ResponseItemsInner from a JSON string
get_retention_operations_history200_response_items_inner_instance = GetRetentionOperationsHistory200ResponseItemsInner.from_json(json)
# print the JSON string representation of the object
print(GetRetentionOperationsHistory200ResponseItemsInner.to_json())

# convert the object into a dict
get_retention_operations_history200_response_items_inner_dict = get_retention_operations_history200_response_items_inner_instance.to_dict()
# create an instance of GetRetentionOperationsHistory200ResponseItemsInner from a dict
get_retention_operations_history200_response_items_inner_from_dict = GetRetentionOperationsHistory200ResponseItemsInner.from_dict(get_retention_operations_history200_response_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


