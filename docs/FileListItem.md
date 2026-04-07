# FileListItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**size** | **str** | Size in bytes, or \&quot;-1\&quot; for folders | [optional] 
**last_modified** | **datetime** |  | [optional] 
**folder** | **bool** |  | [optional] 
**sha1** | **str** |  | [optional] 
**md_timestamps** | **Dict[str, datetime]** |  | [optional] 

## Example

```python
from jfrog_client.models.file_list_item import FileListItem

# TODO update the JSON string below
json = "{}"
# create an instance of FileListItem from a JSON string
file_list_item_instance = FileListItem.from_json(json)
# print the JSON string representation of the object
print(FileListItem.to_json())

# convert the object into a dict
file_list_item_dict = file_list_item_instance.to_dict()
# create an instance of FileListItem from a dict
file_list_item_from_dict = FileListItem.from_dict(file_list_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


