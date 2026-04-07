# RetrievePluginInfo200ResponseExecutionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**users** | **List[str]** |  | [optional] 
**groups** | **List[str]** |  | [optional] 
**params** | **Dict[str, object]** |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_plugin_info200_response_executions_inner import RetrievePluginInfo200ResponseExecutionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrievePluginInfo200ResponseExecutionsInner from a JSON string
retrieve_plugin_info200_response_executions_inner_instance = RetrievePluginInfo200ResponseExecutionsInner.from_json(json)
# print the JSON string representation of the object
print(RetrievePluginInfo200ResponseExecutionsInner.to_json())

# convert the object into a dict
retrieve_plugin_info200_response_executions_inner_dict = retrieve_plugin_info200_response_executions_inner_instance.to_dict()
# create an instance of RetrievePluginInfo200ResponseExecutionsInner from a dict
retrieve_plugin_info200_response_executions_inner_from_dict = RetrievePluginInfo200ResponseExecutionsInner.from_dict(retrieve_plugin_info200_response_executions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


