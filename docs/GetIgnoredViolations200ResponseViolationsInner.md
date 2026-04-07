# GetIgnoredViolations200ResponseViolationsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**violation_id** | **str** |  | 
**description** | **str** |  | 
**severity** | **str** |  | 
**type** | **str** |  | 
**infected_components** | **List[str]** |  | 
**created** | **str** |  | 
**watch_name** | **str** |  | 
**matched_policies** | [**List[GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner]**](GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner.md) |  | 
**issue_id** | **str** |  | 
**impacted_artifacts** | **List[str]** |  | 
**ignore_rule_info** | [**GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo**](GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo.md) |  | 
**extended_information** | [**GetIgnoredViolations200ResponseViolationsInnerExtendedInformation**](GetIgnoredViolations200ResponseViolationsInnerExtendedInformation.md) |  | 
**applicability** | [**List[GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner]**](GetIgnoredViolations200ResponseViolationsInnerApplicabilityInner.md) |  | 
**applicability_details** | [**List[GetIgnoredViolations200ResponseViolationsInnerApplicabilityDetailsInner]**](GetIgnoredViolations200ResponseViolationsInnerApplicabilityDetailsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response_violations_inner import GetIgnoredViolations200ResponseViolationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200ResponseViolationsInner from a JSON string
get_ignored_violations200_response_violations_inner_instance = GetIgnoredViolations200ResponseViolationsInner.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200ResponseViolationsInner.to_json())

# convert the object into a dict
get_ignored_violations200_response_violations_inner_dict = get_ignored_violations200_response_violations_inner_instance.to_dict()
# create an instance of GetIgnoredViolations200ResponseViolationsInner from a dict
get_ignored_violations200_response_violations_inner_from_dict = GetIgnoredViolations200ResponseViolationsInner.from_dict(get_ignored_violations200_response_violations_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


