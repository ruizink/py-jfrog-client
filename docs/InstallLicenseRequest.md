# InstallLicenseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_key** | **str** | License key (newline characters must be represented by escape sequence \\n) | [optional] 

## Example

```python
from jfrog_client.models.install_license_request import InstallLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InstallLicenseRequest from a JSON string
install_license_request_instance = InstallLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(InstallLicenseRequest.to_json())

# convert the object into a dict
install_license_request_dict = install_license_request_instance.to_dict()
# create an instance of InstallLicenseRequest from a dict
install_license_request_from_dict = InstallLicenseRequest.from_dict(install_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


