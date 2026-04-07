# GetLiveLogsData200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_update_modified** | **int** | The log file&#39;s last updated timestamp | [optional] 
**last_update_label** | **int** | The timestamp of the response | [optional] 
**log_content** | **str** | The log content chunk (up to 300KB) | [optional] 
**file_size** | **int** | The total size of the log file | [optional] 

## Example

```python
from jfrog_client.models.get_live_logs_data200_response import GetLiveLogsData200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetLiveLogsData200Response from a JSON string
get_live_logs_data200_response_instance = GetLiveLogsData200Response.from_json(json)
# print the JSON string representation of the object
print(GetLiveLogsData200Response.to_json())

# convert the object into a dict
get_live_logs_data200_response_dict = get_live_logs_data200_response_instance.to_dict()
# create an instance of GetLiveLogsData200Response from a dict
get_live_logs_data200_response_from_dict = GetLiveLogsData200Response.from_dict(get_live_logs_data200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


