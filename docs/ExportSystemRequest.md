# ExportSystemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_path** | **str** | The file system path to export to | 
**include_metadata** | **bool** | Include metadata | [optional] 
**create_archive** | **bool** | Create archive | [optional] 
**bypass_filtering** | **bool** | Bypass filtering | [optional] 
**verbose** | **bool** | Verbose mode | [optional] 
**fail_on_error** | **bool** | Fail on error | [optional] 
**fail_if_empty** | **bool** | Fail if empty | [optional] 
**m2** | **bool** | Maven 2 format | [optional] 
**incremental** | **bool** | Incremental export | [optional] 
**exclude_content** | **bool** | Exclude content | [optional] 

## Example

```python
from jfrog_client.models.export_system_request import ExportSystemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSystemRequest from a JSON string
export_system_request_instance = ExportSystemRequest.from_json(json)
# print the JSON string representation of the object
print(ExportSystemRequest.to_json())

# convert the object into a dict
export_system_request_dict = export_system_request_instance.to_dict()
# create an instance of ExportSystemRequest from a dict
export_system_request_from_dict = ExportSystemRequest.from_dict(export_system_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


