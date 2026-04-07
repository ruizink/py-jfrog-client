# FullSystemImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**import_path** | **str** | The file system path to import from | 
**include_metadata** | **bool** | Include metadata | [optional] 
**verbose** | **bool** | Verbose mode | [optional] 
**fail_on_error** | **bool** | Fail on error | [optional] 
**fail_if_empty** | **bool** | Fail if empty | [optional] 

## Example

```python
from jfrog_client.models.full_system_import_request import FullSystemImportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FullSystemImportRequest from a JSON string
full_system_import_request_instance = FullSystemImportRequest.from_json(json)
# print the JSON string representation of the object
print(FullSystemImportRequest.to_json())

# convert the object into a dict
full_system_import_request_dict = full_system_import_request_instance.to_dict()
# create an instance of FullSystemImportRequest from a dict
full_system_import_request_from_dict = FullSystemImportRequest.from_dict(full_system_import_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


