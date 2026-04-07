# UnregisterPairingTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_url** | **str** | The base URL of the service to unpair | 

## Example

```python
from jfrog_client.models.unregister_pairing_token_request import UnregisterPairingTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UnregisterPairingTokenRequest from a JSON string
unregister_pairing_token_request_instance = UnregisterPairingTokenRequest.from_json(json)
# print the JSON string representation of the object
print(UnregisterPairingTokenRequest.to_json())

# convert the object into a dict
unregister_pairing_token_request_dict = unregister_pairing_token_request_instance.to_dict()
# create an instance of UnregisterPairingTokenRequest from a dict
unregister_pairing_token_request_from_dict = UnregisterPairingTokenRequest.from_dict(unregister_pairing_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


