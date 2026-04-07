# BackgroundTask


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**node_id** | **str** |  | [optional] 
**started** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.background_task import BackgroundTask

# TODO update the JSON string below
json = "{}"
# create an instance of BackgroundTask from a JSON string
background_task_instance = BackgroundTask.from_json(json)
# print the JSON string representation of the object
print(BackgroundTask.to_json())

# convert the object into a dict
background_task_dict = background_task_instance.to_dict()
# create an instance of BackgroundTask from a dict
background_task_from_dict = BackgroundTask.from_dict(background_task_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


