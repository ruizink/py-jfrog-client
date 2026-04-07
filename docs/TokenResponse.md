# TokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** | The access token | [optional] 
**token_type** | **str** | Token type (usually \&quot;Bearer\&quot;) | [optional] 
**expires_in** | **int** | Expiry time in seconds | [optional] 
**scope** | **str** | The scope of the token | [optional] 
**refresh_token** | **str** | The refresh token (if refreshable) | [optional] 
**reference_token** | **str** | The reference token (if include_reference_token was true) | [optional] 

## Example

```python
from jfrog_client.models.token_response import TokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TokenResponse from a JSON string
token_response_instance = TokenResponse.from_json(json)
# print the JSON string representation of the object
print(TokenResponse.to_json())

# convert the object into a dict
token_response_dict = token_response_instance.to_dict()
# create an instance of TokenResponse from a dict
token_response_from_dict = TokenResponse.from_dict(token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


