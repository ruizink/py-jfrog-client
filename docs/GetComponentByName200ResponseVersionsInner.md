# GetComponentByName200ResponseVersionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** | Version string. | [optional] 
**released** | **str** | Release timestamp. | [optional] 
**licenses** | **List[str]** | List of licenses for this version. | [optional] 
**files** | [**List[GetComponentByName200ResponseVersionsInnerFilesInner]**](GetComponentByName200ResponseVersionsInnerFilesInner.md) | List of files for this version. | [optional] 

## Example

```python
from jfrog_client.models.get_component_by_name200_response_versions_inner import GetComponentByName200ResponseVersionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetComponentByName200ResponseVersionsInner from a JSON string
get_component_by_name200_response_versions_inner_instance = GetComponentByName200ResponseVersionsInner.from_json(json)
# print the JSON string representation of the object
print(GetComponentByName200ResponseVersionsInner.to_json())

# convert the object into a dict
get_component_by_name200_response_versions_inner_dict = get_component_by_name200_response_versions_inner_instance.to_dict()
# create an instance of GetComponentByName200ResponseVersionsInner from a dict
get_component_by_name200_response_versions_inner_from_dict = GetComponentByName200ResponseVersionsInner.from_dict(get_component_by_name200_response_versions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


