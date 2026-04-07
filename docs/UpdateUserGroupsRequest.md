# UpdateUserGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add** | **List[str]** | Groups to add the user to | [optional] 
**remove** | **List[str]** | Groups to remove the user from | [optional] 

## Example

```python
from jfrog_client.models.update_user_groups_request import UpdateUserGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateUserGroupsRequest from a JSON string
update_user_groups_request_instance = UpdateUserGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateUserGroupsRequest.to_json())

# convert the object into a dict
update_user_groups_request_dict = update_user_groups_request_instance.to_dict()
# create an instance of UpdateUserGroupsRequest from a dict
update_user_groups_request_from_dict = UpdateUserGroupsRequest.from_dict(update_user_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


