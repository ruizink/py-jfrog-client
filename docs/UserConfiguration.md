# UserConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The username | [optional] 
**email** | **str** | The user&#39;s email address | [optional] 
**last_logged_in** | **datetime** | Last login timestamp in ISO8601 format | [optional] 
**realm** | **str** | The user&#39;s authentication realm | [optional] 
**admin** | **bool** | Whether the user is an administrator | [optional] 
**profile_updatable** | **bool** | Whether the user can update their own profile | [optional] 
**internal_password_disabled** | **bool** | Whether internal password authentication is disabled | [optional] 
**groups** | **List[str]** | List of groups the user belongs to | [optional] 
**disable_ui_access** | **bool** | Whether UI access is disabled for this user | [optional] 
**policy_viewer** | **bool** | Whether the user has policy viewer permissions | [optional] 
**policy_manager** | **bool** | Whether the user has policy manager permissions | [optional] 
**watch_manager** | **bool** | Whether the user has watch manager permissions | [optional] 
**reports_manager** | **bool** | Whether the user has reports manager permissions | [optional] 
**mfa_status** | **str** | Multi-factor authentication status | [optional] 
**status** | **str** | User account status | [optional] 

## Example

```python
from jfrog_client.models.user_configuration import UserConfiguration

# TODO update the JSON string below
json = "{}"
# create an instance of UserConfiguration from a JSON string
user_configuration_instance = UserConfiguration.from_json(json)
# print the JSON string representation of the object
print(UserConfiguration.to_json())

# convert the object into a dict
user_configuration_dict = user_configuration_instance.to_dict()
# create an instance of UserConfiguration from a dict
user_configuration_from_dict = UserConfiguration.from_dict(user_configuration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


