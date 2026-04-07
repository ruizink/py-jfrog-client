# GetHALicenseInfo200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**valid_through** | **str** |  | [optional] 
**licensed_to** | **str** |  | [optional] 
**license_hash** | **str** |  | [optional] 
**node_id** | **str** |  | [optional] 
**node_url** | **str** |  | [optional] 
**expired** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_ha_license_info200_response_inner import GetHALicenseInfo200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetHALicenseInfo200ResponseInner from a JSON string
get_ha_license_info200_response_inner_instance = GetHALicenseInfo200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetHALicenseInfo200ResponseInner.to_json())

# convert the object into a dict
get_ha_license_info200_response_inner_dict = get_ha_license_info200_response_inner_instance.to_dict()
# create an instance of GetHALicenseInfo200ResponseInner from a dict
get_ha_license_info200_response_inner_from_dict = GetHALicenseInfo200ResponseInner.from_dict(get_ha_license_info200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


