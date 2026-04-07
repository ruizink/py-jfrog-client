# TokenCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **str** | The grant type. Use \&quot;client_credentials\&quot; to create a new token or \&quot;refresh_token\&quot; to refresh an existing token. | [optional] [default to 'client_credentials']
**refresh_token** | **str** | The refresh token value of the access token to be refreshed. Required when grant_type is \&quot;refresh_token\&quot;. | [optional] 
**username** | **str** | The username for which to create the token | [optional] 
**scope** | **str** | The scope of access. See documentation for supported scopes. | [optional] [default to 'applied-permissions/user']
**expires_in** | **int** | Token expiry in seconds. 0 for non-expirable (admin only). | [optional] 
**refreshable** | **bool** | Whether the token is refreshable | [optional] [default to False]
**description** | **str** | Token description | [optional] 
**audience** | **str** | Space-separated list of service IDs that should accept this token | [optional] [default to '*@*']
**include_reference_token** | **bool** | Generate a reference token in addition to the full token. Since 7.38.10. | [optional] [default to False]
**force_revocable** | **bool** | Add force_revocable flag to token. Since 7.50.3. | [optional] [default to False]

## Example

```python
from jfrog_client.models.token_create_request import TokenCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TokenCreateRequest from a JSON string
token_create_request_instance = TokenCreateRequest.from_json(json)
# print the JSON string representation of the object
print(TokenCreateRequest.to_json())

# convert the object into a dict
token_create_request_dict = token_create_request_instance.to_dict()
# create an instance of TokenCreateRequest from a dict
token_create_request_from_dict = TokenCreateRequest.from_dict(token_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


