# GetImportSystemSettingsExample200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**import_path** | **str** |  | [optional] 
**include_metadata** | **bool** |  | [optional] 
**verbose** | **bool** |  | [optional] 
**fail_on_error** | **bool** |  | [optional] 
**fail_if_empty** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_import_system_settings_example200_response import GetImportSystemSettingsExample200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetImportSystemSettingsExample200Response from a JSON string
get_import_system_settings_example200_response_instance = GetImportSystemSettingsExample200Response.from_json(json)
# print the JSON string representation of the object
print(GetImportSystemSettingsExample200Response.to_json())

# convert the object into a dict
get_import_system_settings_example200_response_dict = get_import_system_settings_example200_response_instance.to_dict()
# create an instance of GetImportSystemSettingsExample200Response from a dict
get_import_system_settings_example200_response_from_dict = GetImportSystemSettingsExample200Response.from_dict(get_import_system_settings_example200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


