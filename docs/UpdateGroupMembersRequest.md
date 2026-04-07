# UpdateGroupMembersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add** | **List[str]** | Members to add | [optional] 
**remove** | **List[str]** | Members to remove | [optional] 

## Example

```python
from jfrog_client.models.update_group_members_request import UpdateGroupMembersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateGroupMembersRequest from a JSON string
update_group_members_request_instance = UpdateGroupMembersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateGroupMembersRequest.to_json())

# convert the object into a dict
update_group_members_request_dict = update_group_members_request_instance.to_dict()
# create an instance of UpdateGroupMembersRequest from a dict
update_group_members_request_from_dict = UpdateGroupMembersRequest.from_dict(update_group_members_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


