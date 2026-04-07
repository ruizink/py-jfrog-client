# GetLicenseInfo200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**valid_through** | **str** |  | [optional] 
**licensed_to** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_license_info200_response import GetLicenseInfo200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetLicenseInfo200Response from a JSON string
get_license_info200_response_instance = GetLicenseInfo200Response.from_json(json)
# print the JSON string representation of the object
print(GetLicenseInfo200Response.to_json())

# convert the object into a dict
get_license_info200_response_dict = get_license_info200_response_instance.to_dict()
# create an instance of GetLicenseInfo200Response from a dict
get_license_info200_response_from_dict = GetLicenseInfo200Response.from_dict(get_license_info200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


