# ViolationsSearchRequestFilters

Filtering parameters for the search.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name_contains** | **str** | Filter results where the description contains this string. | [optional] 
**include_details** | **bool** | Include additional violation detail properties in the response. | [optional] 
**violation_type** | **str** | Filter by violation type. | [optional] 
**watch_name** | **str** | Filter by watch name. | [optional] 
**min_severity** | **str** | Filter violations with severity equal to or higher than this value. | [optional] 
**created_from** | **datetime** | Filter violations created from this time (RFC 3339). | [optional] 
**created_until** | **datetime** | Filter violations created until this time (RFC 3339). | [optional] 
**issue_id** | **str** | Filter by issue ID (e.g., XRAY-94620). | [optional] 
**cve_id** | **str** | Filter by CVE ID (e.g., CVE-2019-17531). | [optional] 
**resources** | [**ViolationsSearchRequestFiltersResources**](ViolationsSearchRequestFiltersResources.md) |  | [optional] 

## Example

```python
from jfrog_client.models.violations_search_request_filters import ViolationsSearchRequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ViolationsSearchRequestFilters from a JSON string
violations_search_request_filters_instance = ViolationsSearchRequestFilters.from_json(json)
# print the JSON string representation of the object
print(ViolationsSearchRequestFilters.to_json())

# convert the object into a dict
violations_search_request_filters_dict = violations_search_request_filters_instance.to_dict()
# create an instance of ViolationsSearchRequestFilters from a dict
violations_search_request_filters_from_dict = ViolationsSearchRequestFilters.from_dict(violations_search_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


