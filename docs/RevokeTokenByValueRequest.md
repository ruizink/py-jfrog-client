# RevokeTokenByValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **str** | The token value to revoke. Can be either a reference token or a JWT access token. The token must have been created with &#x60;force_revocable: true&#x60; or &#x60;refreshable: true&#x60; for JWT tokens to be revocable. | 

## Example

```python
from jfrog_client.models.revoke_token_by_value_request import RevokeTokenByValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeTokenByValueRequest from a JSON string
revoke_token_by_value_request_instance = RevokeTokenByValueRequest.from_json(json)
# print the JSON string representation of the object
print(RevokeTokenByValueRequest.to_json())

# convert the object into a dict
revoke_token_by_value_request_dict = revoke_token_by_value_request_instance.to_dict()
# create an instance of RevokeTokenByValueRequest from a dict
revoke_token_by_value_request_from_dict = RevokeTokenByValueRequest.from_dict(revoke_token_by_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


