# IgnoreRulesCreateRequest

Request body for creating an ignore rule. Must include notes and an ignore_filters object with at least one objective filter. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notes** | **str** | Free-text note explaining why this rule was created. | 
**expires_at** | **datetime** | Optional expiration date in RFC 3339 format. After this date the rule is marked as expired and stops suppressing violations.  | [optional] 
**ignore_filters** | [**IgnoreRuleFilters**](IgnoreRuleFilters.md) |  | 

## Example

```python
from jfrog_client.models.ignore_rules_create_request import IgnoreRulesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRulesCreateRequest from a JSON string
ignore_rules_create_request_instance = IgnoreRulesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(IgnoreRulesCreateRequest.to_json())

# convert the object into a dict
ignore_rules_create_request_dict = ignore_rules_create_request_instance.to_dict()
# create an instance of IgnoreRulesCreateRequest from a dict
ignore_rules_create_request_from_dict = IgnoreRulesCreateRequest.from_dict(ignore_rules_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


