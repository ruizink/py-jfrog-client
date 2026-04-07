# GetStorageItem200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**created** | **datetime** |  | [optional] 
**files** | [**List[FileListItem]**](FileListItem.md) |  | [optional] 
**last_downloaded** | **int** | Timestamp in milliseconds | [optional] 
**download_count** | **int** |  | [optional] 
**last_downloaded_by** | **str** |  | [optional] 
**last_modified** | **datetime** |  | [optional] 
**properties** | **Dict[str, List[str]]** |  | [optional] 
**principals** | [**ItemPermissionsPrincipals**](ItemPermissionsPrincipals.md) |  | [optional] 
**repo** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**created_by** | **str** |  | [optional] 
**modified_by** | **str** |  | [optional] 
**last_updated** | **datetime** |  | [optional] 
**children** | [**List[FolderChild]**](FolderChild.md) |  | [optional] 
**download_uri** | **str** |  | [optional] 
**remote_url** | **str** |  | [optional] 
**size** | **str** | Size in bytes | [optional] 
**mime_type** | **str** |  | [optional] 
**checksums** | [**Checksums**](Checksums.md) |  | [optional] 
**original_checksums** | [**Checksums**](Checksums.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_storage_item200_response import GetStorageItem200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetStorageItem200Response from a JSON string
get_storage_item200_response_instance = GetStorageItem200Response.from_json(json)
# print the JSON string representation of the object
print(GetStorageItem200Response.to_json())

# convert the object into a dict
get_storage_item200_response_dict = get_storage_item200_response_instance.to_dict()
# create an instance of GetStorageItem200Response from a dict
get_storage_item200_response_from_dict = GetStorageItem200Response.from_dict(get_storage_item200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


