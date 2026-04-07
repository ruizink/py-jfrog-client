# PolicyApiResponse

A policy object as returned by the v1 GET endpoints. Includes read-only fields (author, created, modified) in addition to the fields used for creation. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the policy. | [optional] 
**type** | **str** | The policy type. | [optional] 
**description** | **str** | Description of the policy. | [optional] 
**author** | **str** | The user who created the policy. | [optional] 
**rules** | [**List[PolicyApiRuleResponse]**](PolicyApiRuleResponse.md) | The rules defined in this policy. | [optional] 
**created** | **datetime** | Timestamp when the policy was created. RFC 3339 format.  | [optional] 
**modified** | **datetime** | Timestamp when the policy was last modified. RFC 3339 format.  | [optional] 
**watches** | **List[str]** | Names of watches this policy is assigned to. | [optional] 
**project_key** | **str** | The project key if this is a project-scoped policy. Empty for global policies.  | [optional] 

## Example

```python
from jfrog_client.models.policy_api_response import PolicyApiResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyApiResponse from a JSON string
policy_api_response_instance = PolicyApiResponse.from_json(json)
# print the JSON string representation of the object
print(PolicyApiResponse.to_json())

# convert the object into a dict
policy_api_response_dict = policy_api_response_instance.to_dict()
# create an instance of PolicyApiResponse from a dict
policy_api_response_from_dict = PolicyApiResponse.from_dict(policy_api_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


