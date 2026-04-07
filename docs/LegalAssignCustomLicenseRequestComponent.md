# LegalAssignCustomLicenseRequestComponent

Identifies the component to assign the license to.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_id** | **str** | Package identifier (e.g., npm://lodash, build://my-build). | 
**component_name** | **str** | Component name. | [optional] 
**pkg_type** | **str** | Package type (e.g., npm, maven, pypi). | [optional] 
**version** | **str** | Component version. | [optional] 
**distribution** | **str** | Distribution identifier for remote repositories. | [optional] 
**build_repo** | **str** | Build repository name. Required for build:// components. | [optional] 

## Example

```python
from jfrog_client.models.legal_assign_custom_license_request_component import LegalAssignCustomLicenseRequestComponent

# TODO update the JSON string below
json = "{}"
# create an instance of LegalAssignCustomLicenseRequestComponent from a JSON string
legal_assign_custom_license_request_component_instance = LegalAssignCustomLicenseRequestComponent.from_json(json)
# print the JSON string representation of the object
print(LegalAssignCustomLicenseRequestComponent.to_json())

# convert the object into a dict
legal_assign_custom_license_request_component_dict = legal_assign_custom_license_request_component_instance.to_dict()
# create an instance of LegalAssignCustomLicenseRequestComponent from a dict
legal_assign_custom_license_request_component_from_dict = LegalAssignCustomLicenseRequestComponent.from_dict(legal_assign_custom_license_request_component_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


