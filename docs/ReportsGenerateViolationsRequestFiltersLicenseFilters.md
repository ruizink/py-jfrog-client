# ReportsGenerateViolationsRequestFiltersLicenseFilters

Additional license-specific filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**unknown** | **bool** |  | [optional] 
**unrecognized** | **bool** |  | [optional] 
**license_names** | **List[str]** |  | [optional] 
**license_patterns** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_generate_violations_request_filters_license_filters import ReportsGenerateViolationsRequestFiltersLicenseFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGenerateViolationsRequestFiltersLicenseFilters from a JSON string
reports_generate_violations_request_filters_license_filters_instance = ReportsGenerateViolationsRequestFiltersLicenseFilters.from_json(json)
# print the JSON string representation of the object
print(ReportsGenerateViolationsRequestFiltersLicenseFilters.to_json())

# convert the object into a dict
reports_generate_violations_request_filters_license_filters_dict = reports_generate_violations_request_filters_license_filters_instance.to_dict()
# create an instance of ReportsGenerateViolationsRequestFiltersLicenseFilters from a dict
reports_generate_violations_request_filters_license_filters_from_dict = ReportsGenerateViolationsRequestFiltersLicenseFilters.from_dict(reports_generate_violations_request_filters_license_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


