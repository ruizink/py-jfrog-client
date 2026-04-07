# GetListOfFailedBinaryTasks200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sha1** | **str** |  | [optional] 
**repo_key** | **str** |  | [optional] 
**creation_time** | **int** |  | [optional] 
**failures_count** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_list_of_failed_binary_tasks200_response_inner import GetListOfFailedBinaryTasks200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetListOfFailedBinaryTasks200ResponseInner from a JSON string
get_list_of_failed_binary_tasks200_response_inner_instance = GetListOfFailedBinaryTasks200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetListOfFailedBinaryTasks200ResponseInner.to_json())

# convert the object into a dict
get_list_of_failed_binary_tasks200_response_inner_dict = get_list_of_failed_binary_tasks200_response_inner_instance.to_dict()
# create an instance of GetListOfFailedBinaryTasks200ResponseInner from a dict
get_list_of_failed_binary_tasks200_response_inner_from_dict = GetListOfFailedBinaryTasks200ResponseInner.from_dict(get_list_of_failed_binary_tasks200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


