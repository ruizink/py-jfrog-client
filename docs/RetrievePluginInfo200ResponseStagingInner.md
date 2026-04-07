# RetrievePluginInfo200ResponseStagingInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**params** | **Dict[str, object]** |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_plugin_info200_response_staging_inner import RetrievePluginInfo200ResponseStagingInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrievePluginInfo200ResponseStagingInner from a JSON string
retrieve_plugin_info200_response_staging_inner_instance = RetrievePluginInfo200ResponseStagingInner.from_json(json)
# print the JSON string representation of the object
print(RetrievePluginInfo200ResponseStagingInner.to_json())

# convert the object into a dict
retrieve_plugin_info200_response_staging_inner_dict = retrieve_plugin_info200_response_staging_inner_instance.to_dict()
# create an instance of RetrievePluginInfo200ResponseStagingInner from a dict
retrieve_plugin_info200_response_staging_inner_from_dict = RetrievePluginInfo200ResponseStagingInner.from_dict(retrieve_plugin_info200_response_staging_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


