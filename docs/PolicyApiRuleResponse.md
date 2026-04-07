# PolicyApiRuleResponse

A rule within a policy (v1 response format).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the rule. | [optional] 
**priority** | **int** | Priority for ordering between rules. | [optional] 
**criteria** | [**PolicyCriteria**](PolicyCriteria.md) |  | [optional] 
**actions** | [**PolicyApiActionsResponse**](PolicyApiActionsResponse.md) |  | [optional] 

## Example

```python
from jfrog_client.models.policy_api_rule_response import PolicyApiRuleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyApiRuleResponse from a JSON string
policy_api_rule_response_instance = PolicyApiRuleResponse.from_json(json)
# print the JSON string representation of the object
print(PolicyApiRuleResponse.to_json())

# convert the object into a dict
policy_api_rule_response_dict = policy_api_rule_response_instance.to_dict()
# create an instance of PolicyApiRuleResponse from a dict
policy_api_rule_response_from_dict = PolicyApiRuleResponse.from_dict(policy_api_rule_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


