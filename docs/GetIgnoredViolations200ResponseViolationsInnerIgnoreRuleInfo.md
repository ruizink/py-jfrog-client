# GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**ignore_rule_type** | **str** |  | 
**author** | **str** |  | 
**created** | **int** |  | 
**notes** | **str** |  | 
**is_expired** | **bool** |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response_violations_inner_ignore_rule_info import GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo from a JSON string
get_ignored_violations200_response_violations_inner_ignore_rule_info_instance = GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo.to_json())

# convert the object into a dict
get_ignored_violations200_response_violations_inner_ignore_rule_info_dict = get_ignored_violations200_response_violations_inner_ignore_rule_info_instance.to_dict()
# create an instance of GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo from a dict
get_ignored_violations200_response_violations_inner_ignore_rule_info_from_dict = GetIgnoredViolations200ResponseViolationsInnerIgnoreRuleInfo.from_dict(get_ignored_violations200_response_violations_inner_ignore_rule_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


