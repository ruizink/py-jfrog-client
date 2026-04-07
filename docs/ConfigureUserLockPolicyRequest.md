# ConfigureUserLockPolicyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Enable or disable the user lock policy | 
**login_attempts** | **int** | The maximum number of login attempts allowed | 

## Example

```python
from jfrog_client.models.configure_user_lock_policy_request import ConfigureUserLockPolicyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigureUserLockPolicyRequest from a JSON string
configure_user_lock_policy_request_instance = ConfigureUserLockPolicyRequest.from_json(json)
# print the JSON string representation of the object
print(ConfigureUserLockPolicyRequest.to_json())

# convert the object into a dict
configure_user_lock_policy_request_dict = configure_user_lock_policy_request_instance.to_dict()
# create an instance of ConfigureUserLockPolicyRequest from a dict
configure_user_lock_policy_request_from_dict = ConfigureUserLockPolicyRequest.from_dict(configure_user_lock_policy_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


