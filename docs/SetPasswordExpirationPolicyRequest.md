# SetPasswordExpirationPolicyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **str** |  | [optional] 
**password_max_age** | **str** | Password max age (1-999) | [optional] 
**notify_by_email** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.set_password_expiration_policy_request import SetPasswordExpirationPolicyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetPasswordExpirationPolicyRequest from a JSON string
set_password_expiration_policy_request_instance = SetPasswordExpirationPolicyRequest.from_json(json)
# print the JSON string representation of the object
print(SetPasswordExpirationPolicyRequest.to_json())

# convert the object into a dict
set_password_expiration_policy_request_dict = set_password_expiration_policy_request_instance.to_dict()
# create an instance of SetPasswordExpirationPolicyRequest from a dict
set_password_expiration_policy_request_from_dict = SetPasswordExpirationPolicyRequest.from_dict(set_password_expiration_policy_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


