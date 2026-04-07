# ItemCreated


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**created** | **datetime** |  | [optional] 
**created_by** | **str** |  | [optional] 
**download_uri** | **str** |  | [optional] 
**mime_type** | **str** |  | [optional] 
**size** | **str** | Size in bytes | [optional] 
**checksums** | [**Checksums**](Checksums.md) |  | [optional] 
**original_checksums** | [**Checksums**](Checksums.md) |  | [optional] 
**uri** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.item_created import ItemCreated

# TODO update the JSON string below
json = "{}"
# create an instance of ItemCreated from a JSON string
item_created_instance = ItemCreated.from_json(json)
# print the JSON string representation of the object
print(ItemCreated.to_json())

# convert the object into a dict
item_created_dict = item_created_instance.to_dict()
# create an instance of ItemCreated from a dict
item_created_from_dict = ItemCreated.from_dict(item_created_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


