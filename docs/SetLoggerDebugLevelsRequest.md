# SetLoggerDebugLevelsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classes** | **Dict[str, str]** | The names of the loggers whose debug level you want to change temporarily (for example, com.jfrog.bh), and the debug level to define for each one. Each logger you want to configure must be specified individually by name. The maximum number of loggers that can be configured is 100. | 
**timer** | **int** | The amount of time to keep the loggers at the defined debug level (in seconds). When the interval expires, the loggers are reset to the previous debug level. | 

## Example

```python
from jfrog_client.models.set_logger_debug_levels_request import SetLoggerDebugLevelsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetLoggerDebugLevelsRequest from a JSON string
set_logger_debug_levels_request_instance = SetLoggerDebugLevelsRequest.from_json(json)
# print the JSON string representation of the object
print(SetLoggerDebugLevelsRequest.to_json())

# convert the object into a dict
set_logger_debug_levels_request_dict = set_logger_debug_levels_request_instance.to_dict()
# create an instance of SetLoggerDebugLevelsRequest from a dict
set_logger_debug_levels_request_from_dict = SetLoggerDebugLevelsRequest.from_dict(set_logger_debug_levels_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


