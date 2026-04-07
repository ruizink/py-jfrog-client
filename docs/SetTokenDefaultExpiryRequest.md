# SetTokenDefaultExpiryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_token_expiration** | **int** | Default token expiration in seconds | 

## Example

```python
from jfrog_client.models.set_token_default_expiry_request import SetTokenDefaultExpiryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetTokenDefaultExpiryRequest from a JSON string
set_token_default_expiry_request_instance = SetTokenDefaultExpiryRequest.from_json(json)
# print the JSON string representation of the object
print(SetTokenDefaultExpiryRequest.to_json())

# convert the object into a dict
set_token_default_expiry_request_dict = set_token_default_expiry_request_instance.to_dict()
# create an instance of SetTokenDefaultExpiryRequest from a dict
set_token_default_expiry_request_from_dict = SetTokenDefaultExpiryRequest.from_dict(set_token_default_expiry_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


