# ScanBuildV1200ResponseLicensesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | License name. | [optional] 
**full_name** | **str** | Full license name. | [optional] 
**components** | **List[str]** | Component IDs with this license. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1200_response_licenses_inner import ScanBuildV1200ResponseLicensesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1200ResponseLicensesInner from a JSON string
scan_build_v1200_response_licenses_inner_instance = ScanBuildV1200ResponseLicensesInner.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1200ResponseLicensesInner.to_json())

# convert the object into a dict
scan_build_v1200_response_licenses_inner_dict = scan_build_v1200_response_licenses_inner_instance.to_dict()
# create an instance of ScanBuildV1200ResponseLicensesInner from a dict
scan_build_v1200_response_licenses_inner_from_dict = ScanBuildV1200ResponseLicensesInner.from_dict(scan_build_v1200_response_licenses_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


