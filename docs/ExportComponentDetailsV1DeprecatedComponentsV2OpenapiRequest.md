# ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_type** | **str** | Package type of the component (e.g. docker, maven, npm). | 
**component_name** | **str** | Name of the component to export details for. | 
**path** | **str** | Path to the component in the repository. | [optional] 
**output_format** | **str** | Output format for the export (e.g. pdf). | [optional] 
**spdx** | **bool** | Generate SPDX SBOM document. | [optional] 
**spdx_format** | **str** | SPDX output format (e.g. json, tag-value). | [optional] 
**cyclonedx** | **bool** | Generate CycloneDX SBOM document. | [optional] 
**cyclonedx_format** | **str** | CycloneDX output format (e.g. json, xml). | [optional] 
**vex** | **bool** | Generate VEX (Vulnerability Exploitability eXchange) document. | [optional] 
**violations** | **bool** | Include violations in the export. | [optional] 
**include_ignored_violations** | **bool** | Include ignored violations in the export. | [optional] 
**license** | **bool** | Include license information in the export. | [optional] 
**exclude_unknown** | **bool** | Exclude components with unknown licenses from the export. | [optional] 
**vulnerabilities** | **bool** | Include security vulnerabilities information in the export. | [optional] 
**operational_risk** | **bool** | Include operational risk information in the export. | [optional] 
**secrets** | **bool** | Include information about secrets in the export. | [optional] 
**services** | **bool** | Include information about services in the export. | [optional] 
**malicious_code** | **bool** | Include malicious code findings in the export. | [optional] 
**applications** | **bool** | Include information about applications in the export. | [optional] 
**iac** | **bool** | Include Infrastructure as Code (IaC) findings in the export. | [optional] 
**sast** | **bool** | Include Static Application Security Testing (SAST) findings in the export. | [optional] 
**license_resolution** | **bool** | Include license conclusion/resolution in the export. | [optional] 

## Example

```python
from jfrog_client.models.export_component_details_v1_deprecated_components_v2_openapi_request import ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest from a JSON string
export_component_details_v1_deprecated_components_v2_openapi_request_instance = ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest.from_json(json)
# print the JSON string representation of the object
print(ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest.to_json())

# convert the object into a dict
export_component_details_v1_deprecated_components_v2_openapi_request_dict = export_component_details_v1_deprecated_components_v2_openapi_request_instance.to_dict()
# create an instance of ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest from a dict
export_component_details_v1_deprecated_components_v2_openapi_request_from_dict = ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest.from_dict(export_component_details_v1_deprecated_components_v2_openapi_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


