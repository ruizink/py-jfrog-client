# LegalAssignCustomLicenseRequestLicense

Specifies the license to assign. Must be a known license.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | License identifier. Must be a known license in the system. | 
**full_name** | **str** | Full display name of the license. | [optional] 
**references** | **List[str]** | Array of reference URLs for the license. | [optional] 
**aliases** | **List[str]** | Array of alternative names for the license. | [optional] 

## Example

```python
from jfrog_client.models.legal_assign_custom_license_request_license import LegalAssignCustomLicenseRequestLicense

# TODO update the JSON string below
json = "{}"
# create an instance of LegalAssignCustomLicenseRequestLicense from a JSON string
legal_assign_custom_license_request_license_instance = LegalAssignCustomLicenseRequestLicense.from_json(json)
# print the JSON string representation of the object
print(LegalAssignCustomLicenseRequestLicense.to_json())

# convert the object into a dict
legal_assign_custom_license_request_license_dict = legal_assign_custom_license_request_license_instance.to_dict()
# create an instance of LegalAssignCustomLicenseRequestLicense from a dict
legal_assign_custom_license_request_license_from_dict = LegalAssignCustomLicenseRequestLicense.from_dict(legal_assign_custom_license_request_license_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


