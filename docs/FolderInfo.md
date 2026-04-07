# FolderInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**repo** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**created** | **datetime** |  | [optional] 
**created_by** | **str** |  | [optional] 
**last_modified** | **datetime** |  | [optional] 
**modified_by** | **str** |  | [optional] 
**last_updated** | **datetime** |  | [optional] 
**children** | [**List[FolderChild]**](FolderChild.md) |  | [optional] 

## Example

```python
from jfrog_client.models.folder_info import FolderInfo

# TODO update the JSON string below
json = "{}"
# create an instance of FolderInfo from a JSON string
folder_info_instance = FolderInfo.from_json(json)
# print the JSON string representation of the object
print(FolderInfo.to_json())

# convert the object into a dict
folder_info_dict = folder_info_instance.to_dict()
# create an instance of FolderInfo from a dict
folder_info_from_dict = FolderInfo.from_dict(folder_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


