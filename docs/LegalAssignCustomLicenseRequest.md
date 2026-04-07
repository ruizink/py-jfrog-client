# LegalAssignCustomLicenseRequest

Request body for assigning a license to a component.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | [**LegalAssignCustomLicenseRequestComponent**](LegalAssignCustomLicenseRequestComponent.md) |  | 
**license** | [**LegalAssignCustomLicenseRequestLicense**](LegalAssignCustomLicenseRequestLicense.md) |  | 

## Example

```python
from jfrog_client.models.legal_assign_custom_license_request import LegalAssignCustomLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LegalAssignCustomLicenseRequest from a JSON string
legal_assign_custom_license_request_instance = LegalAssignCustomLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(LegalAssignCustomLicenseRequest.to_json())

# convert the object into a dict
legal_assign_custom_license_request_dict = legal_assign_custom_license_request_instance.to_dict()
# create an instance of LegalAssignCustomLicenseRequest from a dict
legal_assign_custom_license_request_from_dict = LegalAssignCustomLicenseRequest.from_dict(legal_assign_custom_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


