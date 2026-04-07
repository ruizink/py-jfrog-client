# PolicyOpRiskCustom

Custom operational risk criteria. Use use_and_condition or use_or_condition to combine multiple conditions. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**op_risk_min_risk** | **str** | Minimum operational risk level. | [optional] 
**use_and_condition** | **bool** | When true, all custom conditions must be met (AND logic). When false, any single condition triggers the rule (OR logic).  | [optional] 
**is_eol** | **bool** | Match packages that have reached end of life. | [optional] 
**commits_less_than** | **int** | Match packages with fewer commits per year than this value. | [optional] 
**newer_versions_greater_than** | **int** | Match packages where newer versions exceed this count. | [optional] 
**committers_less_than** | **int** | Match packages with fewer committers per year than this value. | [optional] 
**release_date_greater_than_months** | **int** | Match packages with a release date older than this many months. | [optional] 
**release_cadence_per_year_less_than** | **int** | Match packages with fewer releases per year than this value. | [optional] 
**risk** | **str** | Minimum operational risk level. | [optional] 

## Example

```python
from jfrog_client.models.policy_op_risk_custom import PolicyOpRiskCustom

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyOpRiskCustom from a JSON string
policy_op_risk_custom_instance = PolicyOpRiskCustom.from_json(json)
# print the JSON string representation of the object
print(PolicyOpRiskCustom.to_json())

# convert the object into a dict
policy_op_risk_custom_dict = policy_op_risk_custom_instance.to_dict()
# create an instance of PolicyOpRiskCustom from a dict
policy_op_risk_custom_from_dict = PolicyOpRiskCustom.from_dict(policy_op_risk_custom_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


