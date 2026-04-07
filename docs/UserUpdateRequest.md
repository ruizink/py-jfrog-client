# UserUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** | The user&#39;s email address | [optional] 
**password** | **str** | The password (mandatory when internal_password_disabled changes to false) | [optional] 
**admin** | **bool** | Whether the user is an admin | [optional] 
**profile_updatable** | **bool** | Whether the user can update their profile | [optional] 
**internal_password_disabled** | **bool** | Whether internal password is disabled | [optional] 
**disable_ui_access** | **bool** | Whether UI access is disabled | [optional] 
**watch_manager** | **bool** | Whether user is a watch manager. Available from Artifactory 7.128.0. | [optional] 
**policy_viewer** | **bool** | Whether user is a policy viewer. Available from Artifactory 7.128.0. | [optional] 
**policy_manager** | **bool** | Whether user is a policy manager. Available from Artifactory 7.128.0. | [optional] 
**reports_manager** | **bool** | Whether user is a reports manager. Available from Artifactory 7.128.0. | [optional] 
**resources_manager** | **bool** | Whether user is a resources manager. Available from Artifactory 7.128.0. | [optional] 
**manage_webhook** | **bool** | Whether user can manage webhooks. Available from Artifactory 7.128.0. | [optional] 
**platform_auditor** | **bool** | Whether user is a platform auditor. Available from Artifactory 7.141.0. | [optional] 

## Example

```python
from jfrog_client.models.user_update_request import UserUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UserUpdateRequest from a JSON string
user_update_request_instance = UserUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(UserUpdateRequest.to_json())

# convert the object into a dict
user_update_request_dict = user_update_request_instance.to_dict()
# create an instance of UserUpdateRequest from a dict
user_update_request_from_dict = UserUpdateRequest.from_dict(user_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


