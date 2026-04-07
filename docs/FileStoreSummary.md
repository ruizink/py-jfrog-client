# FileStoreSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storage_type** | **str** |  | [optional] 
**storage_directory** | **str** |  | [optional] 
**total_space** | **str** |  | [optional] 
**used_space** | **str** |  | [optional] 
**free_space** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.file_store_summary import FileStoreSummary

# TODO update the JSON string below
json = "{}"
# create an instance of FileStoreSummary from a JSON string
file_store_summary_instance = FileStoreSummary.from_json(json)
# print the JSON string representation of the object
print(FileStoreSummary.to_json())

# convert the object into a dict
file_store_summary_dict = file_store_summary_instance.to_dict()
# create an instance of FileStoreSummary from a dict
file_store_summary_from_dict = FileStoreSummary.from_dict(file_store_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


