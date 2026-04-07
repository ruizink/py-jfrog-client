# GetTokenDefaultExpiry200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_token_expiration** | **int** | Default token expiration in seconds | [optional] 

## Example

```python
from jfrog_client.models.get_token_default_expiry200_response import GetTokenDefaultExpiry200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetTokenDefaultExpiry200Response from a JSON string
get_token_default_expiry200_response_instance = GetTokenDefaultExpiry200Response.from_json(json)
# print the JSON string representation of the object
print(GetTokenDefaultExpiry200Response.to_json())

# convert the object into a dict
get_token_default_expiry200_response_dict = get_token_default_expiry200_response_instance.to_dict()
# create an instance of GetTokenDefaultExpiry200Response from a dict
get_token_default_expiry200_response_from_dict = GetTokenDefaultExpiry200Response.from_dict(get_token_default_expiry200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


