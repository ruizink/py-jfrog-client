# GetBuildsScanResults200ResponseViolationsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issue_id** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**severity** | **str** | Possible values: Critical, High, Medium, Low, Information, Unknown. | [optional] 
**type** | **str** | Violation type: security, license, or operational_risk. | [optional] 
**watch_name** | **str** |  | [optional] 
**fail_build** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_builds_scan_results200_response_violations_inner import GetBuildsScanResults200ResponseViolationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetBuildsScanResults200ResponseViolationsInner from a JSON string
get_builds_scan_results200_response_violations_inner_instance = GetBuildsScanResults200ResponseViolationsInner.from_json(json)
# print the JSON string representation of the object
print(GetBuildsScanResults200ResponseViolationsInner.to_json())

# convert the object into a dict
get_builds_scan_results200_response_violations_inner_dict = get_builds_scan_results200_response_violations_inner_instance.to_dict()
# create an instance of GetBuildsScanResults200ResponseViolationsInner from a dict
get_builds_scan_results200_response_violations_inner_from_dict = GetBuildsScanResults200ResponseViolationsInner.from_dict(get_builds_scan_results200_response_violations_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


