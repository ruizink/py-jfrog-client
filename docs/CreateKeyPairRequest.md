# CreateKeyPairRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pair_name** | **str** | The name of the key pair (mandatory) | 
**pair_type** | **str** | The type of key pair (mandatory) | 
**alias** | **str** | The alias for the key pair (mandatory) | 
**private_key** | **str** | The private key in PEM format (mandatory) | 
**public_key** | **str** | The public key in PEM format (mandatory) | 
**passphrase** | **str** | The passphrase for the private key | [optional] 
**vault_key** | **str** | Vault key identifier | [optional] 
**vault_public_key** | [**CreateKeyPairRequestVaultPublicKey**](CreateKeyPairRequestVaultPublicKey.md) |  | [optional] 

## Example

```python
from jfrog_client.models.create_key_pair_request import CreateKeyPairRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateKeyPairRequest from a JSON string
create_key_pair_request_instance = CreateKeyPairRequest.from_json(json)
# print the JSON string representation of the object
print(CreateKeyPairRequest.to_json())

# convert the object into a dict
create_key_pair_request_dict = create_key_pair_request_instance.to_dict()
# create an instance of CreateKeyPairRequest from a dict
create_key_pair_request_from_dict = CreateKeyPairRequest.from_dict(create_key_pair_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


