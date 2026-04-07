# RetrievePluginInfo200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**executions** | [**List[RetrievePluginInfo200ResponseExecutionsInner]**](RetrievePluginInfo200ResponseExecutionsInner.md) |  | [optional] 
**staging** | [**List[RetrievePluginInfo200ResponseStagingInner]**](RetrievePluginInfo200ResponseStagingInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_plugin_info200_response import RetrievePluginInfo200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrievePluginInfo200Response from a JSON string
retrieve_plugin_info200_response_instance = RetrievePluginInfo200Response.from_json(json)
# print the JSON string representation of the object
print(RetrievePluginInfo200Response.to_json())

# convert the object into a dict
retrieve_plugin_info200_response_dict = retrieve_plugin_info200_response_instance.to_dict()
# create an instance of RetrievePluginInfo200Response from a dict
retrieve_plugin_info200_response_from_dict = RetrievePluginInfo200Response.from_dict(retrieve_plugin_info200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


