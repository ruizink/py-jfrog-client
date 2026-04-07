# FolderChild


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**folder** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.folder_child import FolderChild

# TODO update the JSON string below
json = "{}"
# create an instance of FolderChild from a JSON string
folder_child_instance = FolderChild.from_json(json)
# print the JSON string representation of the object
print(FolderChild.to_json())

# convert the object into a dict
folder_child_dict = folder_child_instance.to_dict()
# create an instance of FolderChild from a dict
folder_child_from_dict = FolderChild.from_dict(folder_child_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


