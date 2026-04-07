# RevokeTokenByValue200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revoked_token_id** | **str** | The ID of the revoked token | [optional] 

## Example

```python
from jfrog_client.models.revoke_token_by_value200_response import RevokeTokenByValue200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeTokenByValue200Response from a JSON string
revoke_token_by_value200_response_instance = RevokeTokenByValue200Response.from_json(json)
# print the JSON string representation of the object
print(RevokeTokenByValue200Response.to_json())

# convert the object into a dict
revoke_token_by_value200_response_dict = revoke_token_by_value200_response_instance.to_dict()
# create an instance of RevokeTokenByValue200Response from a dict
revoke_token_by_value200_response_from_dict = RevokeTokenByValue200Response.from_dict(revoke_token_by_value200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


