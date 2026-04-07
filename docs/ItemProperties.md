# ItemProperties


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**properties** | **Dict[str, List[str]]** |  | [optional] 

## Example

```python
from jfrog_client.models.item_properties import ItemProperties

# TODO update the JSON string below
json = "{}"
# create an instance of ItemProperties from a JSON string
item_properties_instance = ItemProperties.from_json(json)
# print the JSON string representation of the object
print(ItemProperties.to_json())

# convert the object into a dict
item_properties_dict = item_properties_instance.to_dict()
# create an instance of ItemProperties from a dict
item_properties_from_dict = ItemProperties.from_dict(item_properties_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


