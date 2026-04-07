# GroupCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The group name (required) | 
**description** | **str** | Group description | [optional] 
**auto_join** | **bool** | Whether new users auto-join this group | [optional] [default to False]
**admin_privileges** | **bool** | Whether group has admin privileges | [optional] [default to False]
**external_id** | **str** | External ID for SCIM | [optional] 
**members** | **List[str]** | Initial group members | [optional] 
**reports_manager** | **bool** | Whether group has reports manager role. Available from Artifactory 7.128.0. | [optional] [default to False]
**watch_manager** | **bool** | Whether group has watch manager role. Available from Artifactory 7.128.0. | [optional] [default to False]
**policy_manager** | **bool** | Whether group has policy manager role. Available from Artifactory 7.128.0. | [optional] [default to False]
**policy_viewer** | **bool** | Whether group has policy viewer role. Available from Artifactory 7.128.0. | [optional] [default to False]
**manage_resources** | **bool** | Whether group manages resources in the default project. Available from Artifactory 7.128.0. | [optional] [default to False]
**manage_webhook** | **bool** | Whether group has manage webhook permissions. Available from Artifactory 7.128.0. | [optional] [default to False]

## Example

```python
from jfrog_client.models.group_create_request import GroupCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GroupCreateRequest from a JSON string
group_create_request_instance = GroupCreateRequest.from_json(json)
# print the JSON string representation of the object
print(GroupCreateRequest.to_json())

# convert the object into a dict
group_create_request_dict = group_create_request_instance.to_dict()
# create an instance of GroupCreateRequest from a dict
group_create_request_from_dict = GroupCreateRequest.from_dict(group_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


