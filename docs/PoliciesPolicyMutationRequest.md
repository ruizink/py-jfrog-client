# PoliciesPolicyMutationRequest

Request body for creating or updating a policy. A policy defines rules that determine how Xray identifies and acts on issues found during scanning. Each policy has a type (security, license, or operational_risk) and contains one or more rules. Each rule has criteria (what to match) and actions (what to do when matched). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the policy. Must be unique across the system (or within a project when using projectKey).  | 
**description** | **str** | Optional free-text description of the policy. | [optional] 
**type** | **str** | The policy type. Determines which criteria fields are available in the rules.  | 
**rules** | [**List[PolicyRule]**](PolicyRule.md) | One or more rules that define the policy behavior. Each rule specifies criteria to match and actions to take when matched.  | 

## Example

```python
from jfrog_client.models.policies_policy_mutation_request import PoliciesPolicyMutationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PoliciesPolicyMutationRequest from a JSON string
policies_policy_mutation_request_instance = PoliciesPolicyMutationRequest.from_json(json)
# print the JSON string representation of the object
print(PoliciesPolicyMutationRequest.to_json())

# convert the object into a dict
policies_policy_mutation_request_dict = policies_policy_mutation_request_instance.to_dict()
# create an instance of PoliciesPolicyMutationRequest from a dict
policies_policy_mutation_request_from_dict = PoliciesPolicyMutationRequest.from_dict(policies_policy_mutation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


