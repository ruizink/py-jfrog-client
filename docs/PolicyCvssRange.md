# PolicyCvssRange

CVSS score range for filtering vulnerabilities.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **str** | Start of CVSS score range (0.0 - 10.0). | [optional] 
**to** | **str** | End of CVSS score range (0.0 - 10.0). | [optional] 

## Example

```python
from jfrog_client.models.policy_cvss_range import PolicyCvssRange

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyCvssRange from a JSON string
policy_cvss_range_instance = PolicyCvssRange.from_json(json)
# print the JSON string representation of the object
print(PolicyCvssRange.to_json())

# convert the object into a dict
policy_cvss_range_dict = policy_cvss_range_instance.to_dict()
# create an instance of PolicyCvssRange from a dict
policy_cvss_range_from_dict = PolicyCvssRange.from_dict(policy_cvss_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


