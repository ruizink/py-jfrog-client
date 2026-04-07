# DeleteDirectoryTrashPropertyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Information message about the submitted task | [optional] 

## Example

```python
from jfrog_client.models.delete_directory_trash_property_response import DeleteDirectoryTrashPropertyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteDirectoryTrashPropertyResponse from a JSON string
delete_directory_trash_property_response_instance = DeleteDirectoryTrashPropertyResponse.from_json(json)
# print the JSON string representation of the object
print(DeleteDirectoryTrashPropertyResponse.to_json())

# convert the object into a dict
delete_directory_trash_property_response_dict = delete_directory_trash_property_response_instance.to_dict()
# create an instance of DeleteDirectoryTrashPropertyResponse from a dict
delete_directory_trash_property_response_from_dict = DeleteDirectoryTrashPropertyResponse.from_dict(delete_directory_trash_property_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


