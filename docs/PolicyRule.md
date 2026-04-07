# PolicyRule

A single rule within a policy. Contains criteria for matching issues and actions to execute when criteria are met. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the rule. | 
**priority** | **int** | Priority for ordering between rules. Lower numbers indicate higher priority.  | [optional] 
**criteria** | [**PolicyCriteria**](PolicyCriteria.md) |  | 
**actions** | [**PolicyActions**](PolicyActions.md) |  | 

## Example

```python
from jfrog_client.models.policy_rule import PolicyRule

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyRule from a JSON string
policy_rule_instance = PolicyRule.from_json(json)
# print the JSON string representation of the object
print(PolicyRule.to_json())

# convert the object into a dict
policy_rule_dict = policy_rule_instance.to_dict()
# create an instance of PolicyRule from a dict
policy_rule_from_dict = PolicyRule.from_dict(policy_rule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


