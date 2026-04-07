# GetExportSystemSettingsExample200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_path** | **str** |  | [optional] 
**include_metadata** | **bool** |  | [optional] 
**create_archive** | **bool** |  | [optional] 
**bypass_filtering** | **bool** |  | [optional] 
**verbose** | **bool** |  | [optional] 
**fail_on_error** | **bool** |  | [optional] 
**fail_if_empty** | **bool** |  | [optional] 
**m2** | **bool** |  | [optional] 
**incremental** | **bool** |  | [optional] 
**exclude_content** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_export_system_settings_example200_response import GetExportSystemSettingsExample200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetExportSystemSettingsExample200Response from a JSON string
get_export_system_settings_example200_response_instance = GetExportSystemSettingsExample200Response.from_json(json)
# print the JSON string representation of the object
print(GetExportSystemSettingsExample200Response.to_json())

# convert the object into a dict
get_export_system_settings_example200_response_dict = get_export_system_settings_example200_response_instance.to_dict()
# create an instance of GetExportSystemSettingsExample200Response from a dict
get_export_system_settings_example200_response_from_dict = GetExportSystemSettingsExample200Response.from_dict(get_export_system_settings_example200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


