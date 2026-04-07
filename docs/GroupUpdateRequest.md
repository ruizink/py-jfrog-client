# GroupUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** | Group description | [optional] 
**auto_join** | **bool** | Whether new users auto-join this group | [optional] 
**admin_privileges** | **bool** | Whether group has admin privileges | [optional] 
**external_id** | **str** | External ID for SCIM | [optional] 
**reports_manager** | **bool** | Whether group has reports manager role. Available from Artifactory 7.128.0. | [optional] 
**watch_manager** | **bool** | Whether group has watch manager role. Available from Artifactory 7.128.0. | [optional] 
**policy_manager** | **bool** | Whether group has policy manager role. Available from Artifactory 7.128.0. | [optional] 
**policy_viewer** | **bool** | Whether group has policy viewer role. Available from Artifactory 7.128.0. | [optional] 
**manage_resources** | **bool** | Whether group manages resources in the default project. Available from Artifactory 7.128.0. | [optional] 
**manage_webhook** | **bool** | Whether group has manage webhook permissions. Available from Artifactory 7.128.0. | [optional] 

## Example

```python
from jfrog_client.models.group_update_request import GroupUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GroupUpdateRequest from a JSON string
group_update_request_instance = GroupUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(GroupUpdateRequest.to_json())

# convert the object into a dict
group_update_request_dict = group_update_request_instance.to_dict()
# create an instance of GroupUpdateRequest from a dict
group_update_request_from_dict = GroupUpdateRequest.from_dict(group_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


