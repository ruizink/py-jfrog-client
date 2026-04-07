# GetUserLockPolicy200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**login_attempts** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_user_lock_policy200_response import GetUserLockPolicy200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetUserLockPolicy200Response from a JSON string
get_user_lock_policy200_response_instance = GetUserLockPolicy200Response.from_json(json)
# print the JSON string representation of the object
print(GetUserLockPolicy200Response.to_json())

# convert the object into a dict
get_user_lock_policy200_response_dict = get_user_lock_policy200_response_instance.to_dict()
# create an instance of GetUserLockPolicy200Response from a dict
get_user_lock_policy200_response_from_dict = GetUserLockPolicy200Response.from_dict(get_user_lock_policy200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


