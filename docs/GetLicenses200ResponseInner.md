# GetLicenses200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**full_name** | **str** |  | 
**references** | **List[str]** |  | 
**category** | **str** |  | 
**priority** | **int** |  | 
**default_priority** | **int** |  | 
**is_custom** | **bool** |  | 

## Example

```python
from jfrog_client.models.get_licenses200_response_inner import GetLicenses200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetLicenses200ResponseInner from a JSON string
get_licenses200_response_inner_instance = GetLicenses200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetLicenses200ResponseInner.to_json())

# convert the object into a dict
get_licenses200_response_inner_dict = get_licenses200_response_inner_instance.to_dict()
# create an instance of GetLicenses200ResponseInner from a dict
get_licenses200_response_inner_from_dict = GetLicenses200ResponseInner.from_dict(get_licenses200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


