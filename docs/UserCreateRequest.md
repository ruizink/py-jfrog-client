# UserCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username (required) | 
**password** | **str** | The password (not required if internal_password_disabled&#x3D;true) | [optional] 
**email** | **str** | The user&#39;s email address | 
**groups** | **List[str]** | Groups to add the user to | [optional] 
**admin** | **bool** | Whether the user is an admin | [optional] [default to False]
**profile_updatable** | **bool** | Whether the user can update their profile | [optional] [default to True]
**internal_password_disabled** | **bool** | Whether internal password is disabled | [optional] [default to False]
**disable_ui_access** | **bool** | Whether UI access is disabled | [optional] [default to False]
**watch_manager** | **bool** | Whether user is a watch manager. Available from Artifactory 7.128.0. | [optional] 
**policy_viewer** | **bool** | Whether user is a policy viewer. Available from Artifactory 7.128.0. | [optional] 
**policy_manager** | **bool** | Whether user is a policy manager. Available from Artifactory 7.128.0. | [optional] 
**reports_manager** | **bool** | Whether user is a reports manager. Available from Artifactory 7.128.0. | [optional] 
**resources_manager** | **bool** | Whether user is a resources manager. Available from Artifactory 7.128.0. | [optional] 
**manage_webhook** | **bool** | Whether user can manage webhooks. Available from Artifactory 7.128.0. | [optional] [default to False]
**platform_auditor** | **bool** | Whether user is a platform auditor. Available from Artifactory 7.141.0. | [optional] [default to False]

## Example

```python
from jfrog_client.models.user_create_request import UserCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UserCreateRequest from a JSON string
user_create_request_instance = UserCreateRequest.from_json(json)
# print the JSON string representation of the object
print(UserCreateRequest.to_json())

# convert the object into a dict
user_create_request_dict = user_create_request_instance.to_dict()
# create an instance of UserCreateRequest from a dict
user_create_request_from_dict = UserCreateRequest.from_dict(user_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


