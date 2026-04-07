# CreateKeyPairRequestVaultPublicKey

Vault public key configuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** |  | [optional] 
**key** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.create_key_pair_request_vault_public_key import CreateKeyPairRequestVaultPublicKey

# TODO update the JSON string below
json = "{}"
# create an instance of CreateKeyPairRequestVaultPublicKey from a JSON string
create_key_pair_request_vault_public_key_instance = CreateKeyPairRequestVaultPublicKey.from_json(json)
# print the JSON string representation of the object
print(CreateKeyPairRequestVaultPublicKey.to_json())

# convert the object into a dict
create_key_pair_request_vault_public_key_dict = create_key_pair_request_vault_public_key_instance.to_dict()
# create an instance of CreateKeyPairRequestVaultPublicKey from a dict
create_key_pair_request_vault_public_key_from_dict = CreateKeyPairRequestVaultPublicKey.from_dict(create_key_pair_request_vault_public_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


