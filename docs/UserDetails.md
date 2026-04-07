# UserDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username | [optional] 
**email** | **str** | The user&#39;s email address | [optional] 
**admin** | **bool** | Whether the user is an admin | [optional] 
**effective_admin** | **bool** | Whether the user is effectively an admin (based on groups). | [optional] 
**profile_updatable** | **bool** | Whether the user can update their profile | [optional] 
**disable_ui_access** | **bool** | Whether UI access is disabled for this user | [optional] 
**internal_password_disabled** | **bool** | Whether internal password is disabled | [optional] 
**last_logged_in** | **datetime** | Last login timestamp | [optional] 
**realm** | **str** | The authentication realm | [optional] 
**groups** | **List[str]** | Groups the user belongs to | [optional] 
**status** | **str** | User status | [optional] 
**watch_manager** | **bool** | Whether user is a watch manager. Available from Artifactory 7.128.0. | [optional] 
**policy_viewer** | **bool** | Whether user is a policy viewer. Available from Artifactory 7.128.0. | [optional] 
**policy_manager** | **bool** | Whether user is a policy manager. Available from Artifactory 7.128.0. | [optional] 
**reports_manager** | **bool** | Whether user is a reports manager. Available from Artifactory 7.128.0. | [optional] 
**resources_manager** | **bool** | Whether user is a resources manager. Available from Artifactory 7.128.0. | [optional] 
**manage_webhook** | **bool** | Whether user can manage webhooks. Available from Artifactory 7.128.0. | [optional] 
**platform_auditor** | **bool** | Whether user is a platform auditor. Available from Artifactory 7.141.0. | [optional] 

## Example

```python
from jfrog_client.models.user_details import UserDetails

# TODO update the JSON string below
json = "{}"
# create an instance of UserDetails from a JSON string
user_details_instance = UserDetails.from_json(json)
# print the JSON string representation of the object
print(UserDetails.to_json())

# convert the object into a dict
user_details_dict = user_details_instance.to_dict()
# create an instance of UserDetails from a dict
user_details_from_dict = UserDetails.from_dict(user_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


