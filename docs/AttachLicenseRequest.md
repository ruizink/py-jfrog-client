# AttachLicenseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jpd_id** | **str** | The ID of the JPD to attach the license to | 
**license_count** | **int** | Number of licenses to upload to Artifactory | 

## Example

```python
from jfrog_client.models.attach_license_request import AttachLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AttachLicenseRequest from a JSON string
attach_license_request_instance = AttachLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(AttachLicenseRequest.to_json())

# convert the object into a dict
attach_license_request_dict = attach_license_request_instance.to_dict()
# create an instance of AttachLicenseRequest from a dict
attach_license_request_from_dict = AttachLicenseRequest.from_dict(attach_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


