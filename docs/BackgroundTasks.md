# BackgroundTasks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tasks** | [**List[BackgroundTask]**](BackgroundTask.md) |  | [optional] 

## Example

```python
from jfrog_client.models.background_tasks import BackgroundTasks

# TODO update the JSON string below
json = "{}"
# create an instance of BackgroundTasks from a JSON string
background_tasks_instance = BackgroundTasks.from_json(json)
# print the JSON string representation of the object
print(BackgroundTasks.to_json())

# convert the object into a dict
background_tasks_dict = background_tasks_instance.to_dict()
# create an instance of BackgroundTasks from a dict
background_tasks_from_dict = BackgroundTasks.from_dict(background_tasks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


