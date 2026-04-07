# GetLiveLogsConfig200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logs** | **List[object]** |  | [optional] 
**nodes** | **List[object]** |  | [optional] 
**refresh_rate_millis** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_live_logs_config200_response import GetLiveLogsConfig200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetLiveLogsConfig200Response from a JSON string
get_live_logs_config200_response_instance = GetLiveLogsConfig200Response.from_json(json)
# print the JSON string representation of the object
print(GetLiveLogsConfig200Response.to_json())

# convert the object into a dict
get_live_logs_config200_response_dict = get_live_logs_config200_response_instance.to_dict()
# create an instance of GetLiveLogsConfig200Response from a dict
get_live_logs_config200_response_from_dict = GetLiveLogsConfig200Response.from_dict(get_live_logs_config200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


