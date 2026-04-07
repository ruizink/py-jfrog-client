# RepositoryAdvancedScansRequestFiltersDateRange

Date range filter for artifact selection.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Date filter type: artifact_deployment_date or artifact_download_date. | [optional] 
**date_start** | **datetime** | Start of the date range (RFC 3339). | [optional] 
**date_end** | **datetime** | End of the date range (RFC 3339). | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request_filters_date_range import RepositoryAdvancedScansRequestFiltersDateRange

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequestFiltersDateRange from a JSON string
repository_advanced_scans_request_filters_date_range_instance = RepositoryAdvancedScansRequestFiltersDateRange.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequestFiltersDateRange.to_json())

# convert the object into a dict
repository_advanced_scans_request_filters_date_range_dict = repository_advanced_scans_request_filters_date_range_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequestFiltersDateRange from a dict
repository_advanced_scans_request_filters_date_range_from_dict = RepositoryAdvancedScansRequestFiltersDateRange.from_dict(repository_advanced_scans_request_filters_date_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


