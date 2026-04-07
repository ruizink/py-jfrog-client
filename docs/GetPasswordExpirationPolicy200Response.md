# GetPasswordExpirationPolicy200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **str** |  | [optional] 
**password_max_age** | **str** |  | [optional] 
**notify_by_email** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_password_expiration_policy200_response import GetPasswordExpirationPolicy200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetPasswordExpirationPolicy200Response from a JSON string
get_password_expiration_policy200_response_instance = GetPasswordExpirationPolicy200Response.from_json(json)
# print the JSON string representation of the object
print(GetPasswordExpirationPolicy200Response.to_json())

# convert the object into a dict
get_password_expiration_policy200_response_dict = get_password_expiration_policy200_response_instance.to_dict()
# create an instance of GetPasswordExpirationPolicy200Response from a dict
get_password_expiration_policy200_response_from_dict = GetPasswordExpirationPolicy200Response.from_dict(get_password_expiration_policy200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


