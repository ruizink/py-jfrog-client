# GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scanner_available** | **bool** |  | 
**component_id** | **str** |  | 
**source_comp_id** | **str** |  | 
**cve_id** | **str** |  | 
**scan_status** | **int** |  | 
**applicability** | **bool** |  | 
**scanner_explanation** | **str** |  | 
**evidence** | [**List[GetIgnoredViolations200ResponseViolationsInnerApplicabilityInnerEvidenceInner]**](GetIgnoredViolations200ResponseViolationsInnerApplicabilityInnerEvidenceInner.md) |  | 
**info** | **str** |  | 
**details** | [**List[GetIgnoredViolations200ResponseViolationsInnerApplicabilityInnerDetailsInner]**](GetIgnoredViolations200ResponseViolationsInnerApplicabilityInnerDetailsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response_violations_inner_applicability_inner import GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner from a JSON string
get_ignored_violations200_response_violations_inner_applicability_inner_instance = GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner.to_json())

# convert the object into a dict
get_ignored_violations200_response_violations_inner_applicability_inner_dict = get_ignored_violations200_response_violations_inner_applicability_inner_instance.to_dict()
# create an instance of GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner from a dict
get_ignored_violations200_response_violations_inner_applicability_inner_from_dict = GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner.from_dict(get_ignored_violations200_response_violations_inner_applicability_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


