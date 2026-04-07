# LicenseAttributionReportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** | Path of the requested resource in the platform. | 
**component_id** | **str** | Optional component identifier to scope the report. | [optional] 
**exclude_unknown_license** | **bool** | If true, excludes components with unknown licenses. | [optional] 
**license_resolution** | **bool** | If true, performs automatic license resolution for multi-license components. | [optional] 
**full_license_text** | **bool** | If true, includes the full license text inside the report. | [optional] 
**include_package_versions** | **bool** | If true, includes package versions as a column in the report. | [optional] 
**format** | **str** | Output format. Valid values are pdf, json, csv, txt. | [optional] 

## Example

```python
from jfrog_client.models.license_attribution_report_request import LicenseAttributionReportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseAttributionReportRequest from a JSON string
license_attribution_report_request_instance = LicenseAttributionReportRequest.from_json(json)
# print the JSON string representation of the object
print(LicenseAttributionReportRequest.to_json())

# convert the object into a dict
license_attribution_report_request_dict = license_attribution_report_request_instance.to_dict()
# create an instance of LicenseAttributionReportRequest from a dict
license_attribution_report_request_from_dict = LicenseAttributionReportRequest.from_dict(license_attribution_report_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


