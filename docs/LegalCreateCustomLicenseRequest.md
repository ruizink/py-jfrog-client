# LegalCreateCustomLicenseRequest

Request body for creating a custom license. The name must be unique and cannot exceed 128 characters. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | License key/identifier. Must be unique. Maximum 128 characters. | 
**full_name** | **str** | Full display name of the license. | [optional] 
**text** | **str** | Description or full text of the license. | [optional] 
**references** | **List[str]** | Array of URLs or references related to the license. | [optional] 
**aliases** | **List[str]** | Array of alternative names. Each alias max 128 characters. | [optional] 
**category** | **str** | License category. Defaults to Uncategorized if not specified. | [optional] 

## Example

```python
from jfrog_client.models.legal_create_custom_license_request import LegalCreateCustomLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LegalCreateCustomLicenseRequest from a JSON string
legal_create_custom_license_request_instance = LegalCreateCustomLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(LegalCreateCustomLicenseRequest.to_json())

# convert the object into a dict
legal_create_custom_license_request_dict = legal_create_custom_license_request_instance.to_dict()
# create an instance of LegalCreateCustomLicenseRequest from a dict
legal_create_custom_license_request_from_dict = LegalCreateCustomLicenseRequest.from_dict(legal_create_custom_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


