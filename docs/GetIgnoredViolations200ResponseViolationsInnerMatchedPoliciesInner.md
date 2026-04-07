# GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**policy** | **str** |  | 
**rule** | **str** |  | 
**is_blocking** | **bool** |  | 
**is_ignored** | **bool** |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response_violations_inner_matched_policies_inner import GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner from a JSON string
get_ignored_violations200_response_violations_inner_matched_policies_inner_instance = GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner.to_json())

# convert the object into a dict
get_ignored_violations200_response_violations_inner_matched_policies_inner_dict = get_ignored_violations200_response_violations_inner_matched_policies_inner_instance.to_dict()
# create an instance of GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner from a dict
get_ignored_violations200_response_violations_inner_matched_policies_inner_from_dict = GetIgnoredViolations200ResponseViolationsInnerMatchedPoliciesInner.from_dict(get_ignored_violations200_response_violations_inner_matched_policies_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


