# GetComponentByName200ResponseVersionsInnerFilesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | File name. | [optional] 
**sha256** | **str** | SHA-256 checksum. | [optional] 
**sha1** | **str** | SHA-1 checksum. | [optional] 
**md5** | **str** | MD5 checksum. | [optional] 

## Example

```python
from jfrog_client.models.get_component_by_name200_response_versions_inner_files_inner import GetComponentByName200ResponseVersionsInnerFilesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetComponentByName200ResponseVersionsInnerFilesInner from a JSON string
get_component_by_name200_response_versions_inner_files_inner_instance = GetComponentByName200ResponseVersionsInnerFilesInner.from_json(json)
# print the JSON string representation of the object
print(GetComponentByName200ResponseVersionsInnerFilesInner.to_json())

# convert the object into a dict
get_component_by_name200_response_versions_inner_files_inner_dict = get_component_by_name200_response_versions_inner_files_inner_instance.to_dict()
# create an instance of GetComponentByName200ResponseVersionsInnerFilesInner from a dict
get_component_by_name200_response_versions_inner_files_inner_from_dict = GetComponentByName200ResponseVersionsInnerFilesInner.from_dict(get_component_by_name200_response_versions_inner_files_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


