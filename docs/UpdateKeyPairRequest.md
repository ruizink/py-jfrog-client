# UpdateKeyPairRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pair_name** | **str** |  | 
**pair_type** | **str** |  | 
**alias** | **str** |  | 
**private_key** | **str** |  | 
**public_key** | **str** |  | 
**passphrase** | **str** |  | [optional] 
**vault_key** | **str** |  | [optional] 
**vault_public_key** | [**UpdateKeyPairRequestVaultPublicKey**](UpdateKeyPairRequestVaultPublicKey.md) |  | [optional] 

## Example

```python
from jfrog_client.models.update_key_pair_request import UpdateKeyPairRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateKeyPairRequest from a JSON string
update_key_pair_request_instance = UpdateKeyPairRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateKeyPairRequest.to_json())

# convert the object into a dict
update_key_pair_request_dict = update_key_pair_request_instance.to_dict()
# create an instance of UpdateKeyPairRequest from a dict
update_key_pair_request_from_dict = UpdateKeyPairRequest.from_dict(update_key_pair_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


