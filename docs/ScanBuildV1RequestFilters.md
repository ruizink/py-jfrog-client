# ScanBuildV1RequestFilters

Filters for scanning options.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_licenses** | **bool** | Include license information in the scan results. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1_request_filters import ScanBuildV1RequestFilters

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1RequestFilters from a JSON string
scan_build_v1_request_filters_instance = ScanBuildV1RequestFilters.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1RequestFilters.to_json())

# convert the object into a dict
scan_build_v1_request_filters_dict = scan_build_v1_request_filters_instance.to_dict()
# create an instance of ScanBuildV1RequestFilters from a dict
scan_build_v1_request_filters_from_dict = ScanBuildV1RequestFilters.from_dict(scan_build_v1_request_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


