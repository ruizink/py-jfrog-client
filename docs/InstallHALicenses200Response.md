# InstallHALicenses200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** |  | [optional] 
**messages** | **Dict[str, str]** |  | [optional] 

## Example

```python
from jfrog_client.models.install_ha_licenses200_response import InstallHALicenses200Response

# TODO update the JSON string below
json = "{}"
# create an instance of InstallHALicenses200Response from a JSON string
install_ha_licenses200_response_instance = InstallHALicenses200Response.from_json(json)
# print the JSON string representation of the object
print(InstallHALicenses200Response.to_json())

# convert the object into a dict
install_ha_licenses200_response_dict = install_ha_licenses200_response_instance.to_dict()
# create an instance of InstallHALicenses200Response from a dict
install_ha_licenses200_response_from_dict = InstallHALicenses200Response.from_dict(install_ha_licenses200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


