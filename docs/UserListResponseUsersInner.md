# UserListResponseUsersInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | [optional] 
**uri** | **str** |  | [optional] 
**realm** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.user_list_response_users_inner import UserListResponseUsersInner

# TODO update the JSON string below
json = "{}"
# create an instance of UserListResponseUsersInner from a JSON string
user_list_response_users_inner_instance = UserListResponseUsersInner.from_json(json)
# print the JSON string representation of the object
print(UserListResponseUsersInner.to_json())

# convert the object into a dict
user_list_response_users_inner_dict = user_list_response_users_inner_instance.to_dict()
# create an instance of UserListResponseUsersInner from a dict
user_list_response_users_inner_from_dict = UserListResponseUsersInner.from_dict(user_list_response_users_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


