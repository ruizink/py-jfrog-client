# AttachLicenseResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Whether the license attachment was successful | [optional] 
**message** | **str** | Result message | [optional] 

## Example

```python
from jfrog_client.models.attach_license_response import AttachLicenseResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttachLicenseResponse from a JSON string
attach_license_response_instance = AttachLicenseResponse.from_json(json)
# print the JSON string representation of the object
print(AttachLicenseResponse.to_json())

# convert the object into a dict
attach_license_response_dict = attach_license_response_instance.to_dict()
# create an instance of AttachLicenseResponse from a dict
attach_license_response_from_dict = AttachLicenseResponse.from_dict(attach_license_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


