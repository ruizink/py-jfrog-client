# ItemLastModified


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**last_modified** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.item_last_modified import ItemLastModified

# TODO update the JSON string below
json = "{}"
# create an instance of ItemLastModified from a JSON string
item_last_modified_instance = ItemLastModified.from_json(json)
# print the JSON string representation of the object
print(ItemLastModified.to_json())

# convert the object into a dict
item_last_modified_dict = item_last_modified_instance.to_dict()
# create an instance of ItemLastModified from a dict
item_last_modified_from_dict = ItemLastModified.from_dict(item_last_modified_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


