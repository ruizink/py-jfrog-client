# PolicyApiV2RuleResponse

A rule within a policy (v2 response format).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the rule. | [optional] 
**priority** | **int** | Priority for ordering between rules. | [optional] 
**criteria** | [**PolicyCriteria**](PolicyCriteria.md) |  | [optional] 
**actions** | [**PolicyActionsV2Response**](PolicyActionsV2Response.md) |  | [optional] 

## Example

```python
from jfrog_client.models.policy_api_v2_rule_response import PolicyApiV2RuleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyApiV2RuleResponse from a JSON string
policy_api_v2_rule_response_instance = PolicyApiV2RuleResponse.from_json(json)
# print the JSON string representation of the object
print(PolicyApiV2RuleResponse.to_json())

# convert the object into a dict
policy_api_v2_rule_response_dict = policy_api_v2_rule_response_instance.to_dict()
# create an instance of PolicyApiV2RuleResponse from a dict
policy_api_v2_rule_response_from_dict = PolicyApiV2RuleResponse.from_dict(policy_api_v2_rule_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


