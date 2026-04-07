# DeleteDirectoryTrashPropertyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_size** | **int** | Optional parameter. The number of records to retrieve for a single DB query, should be an integer greater than 0. | [optional] [default to 1000]
**pause_between_batches_ms** | **int** | Optional parameter. This parameter defines the pause (in milliseconds) between successive DB query executions. Should be an integer greater than 0. | [optional] [default to 1000]
**batches_count** | **int** | Optional parameter. This parameter limits the maximum number of DB query executions. For example, if batchesCount &#x3D; 20 and batchSize is 1,000, then a maximum of (20 * 1,000) &#x3D; 20,000 records can be deleted | [optional] [default to -1]

## Example

```python
from jfrog_client.models.delete_directory_trash_property_request import DeleteDirectoryTrashPropertyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteDirectoryTrashPropertyRequest from a JSON string
delete_directory_trash_property_request_instance = DeleteDirectoryTrashPropertyRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteDirectoryTrashPropertyRequest.to_json())

# convert the object into a dict
delete_directory_trash_property_request_dict = delete_directory_trash_property_request_instance.to_dict()
# create an instance of DeleteDirectoryTrashPropertyRequest from a dict
delete_directory_trash_property_request_from_dict = DeleteDirectoryTrashPropertyRequest.from_dict(delete_directory_trash_property_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


