# ExchangePairingTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pairing_token** | **str** | The pairing token | 

## Example

```python
from jfrog_client.models.exchange_pairing_token_request import ExchangePairingTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExchangePairingTokenRequest from a JSON string
exchange_pairing_token_request_instance = ExchangePairingTokenRequest.from_json(json)
# print the JSON string representation of the object
print(ExchangePairingTokenRequest.to_json())

# convert the object into a dict
exchange_pairing_token_request_dict = exchange_pairing_token_request_instance.to_dict()
# create an instance of ExchangePairingTokenRequest from a dict
exchange_pairing_token_request_from_dict = ExchangePairingTokenRequest.from_dict(exchange_pairing_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


