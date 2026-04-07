# FileStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | [optional] 
**last_downloaded** | **int** | Timestamp in milliseconds | [optional] 
**download_count** | **int** |  | [optional] 
**last_downloaded_by** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.file_statistics import FileStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of FileStatistics from a JSON string
file_statistics_instance = FileStatistics.from_json(json)
# print the JSON string representation of the object
print(FileStatistics.to_json())

# convert the object into a dict
file_statistics_dict = file_statistics_instance.to_dict()
# create an instance of FileStatistics from a dict
file_statistics_from_dict = FileStatistics.from_dict(file_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


