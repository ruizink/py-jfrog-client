# ConfiguringTheWorkersCountRequestIndex


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_content** | **int** | Number of workers for indexing new content. | [optional] 
**existing_content** | **int** | Number of workers for indexing existing content. | [optional] 

## Example

```python
from jfrog_client.models.configuring_the_workers_count_request_index import ConfiguringTheWorkersCountRequestIndex

# TODO update the JSON string below
json = "{}"
# create an instance of ConfiguringTheWorkersCountRequestIndex from a JSON string
configuring_the_workers_count_request_index_instance = ConfiguringTheWorkersCountRequestIndex.from_json(json)
# print the JSON string representation of the object
print(ConfiguringTheWorkersCountRequestIndex.to_json())

# convert the object into a dict
configuring_the_workers_count_request_index_dict = configuring_the_workers_count_request_index_instance.to_dict()
# create an instance of ConfiguringTheWorkersCountRequestIndex from a dict
configuring_the_workers_count_request_index_from_dict = ConfiguringTheWorkersCountRequestIndex.from_dict(configuring_the_workers_count_request_index_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


