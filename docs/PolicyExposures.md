# PolicyExposures

Criteria for matching exposures (contextual analysis findings). Enable specific categories to scope which exposure types trigger the rule. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_severity** | **str** | Minimum severity of exposures to match. | [optional] 
**applications** | **bool** | Apply criteria to the applications exposure category. | [optional] 
**iac** | **bool** | Apply criteria to the Infrastructure as Code (IaC) exposure category. | [optional] 
**malicious_code** | **bool** | Apply criteria to the malicious code exposure category. | [optional] 
**secrets** | **bool** | Apply criteria to the secrets exposure category. | [optional] 
**services** | **bool** | Apply criteria to the services exposure category. | [optional] 

## Example

```python
from jfrog_client.models.policy_exposures import PolicyExposures

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyExposures from a JSON string
policy_exposures_instance = PolicyExposures.from_json(json)
# print the JSON string representation of the object
print(PolicyExposures.to_json())

# convert the object into a dict
policy_exposures_dict = policy_exposures_instance.to_dict()
# create an instance of PolicyExposures from a dict
policy_exposures_from_dict = PolicyExposures.from_dict(policy_exposures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


