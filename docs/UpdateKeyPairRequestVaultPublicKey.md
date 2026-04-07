# UpdateKeyPairRequestVaultPublicKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** |  | [optional] 
**key** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.update_key_pair_request_vault_public_key import UpdateKeyPairRequestVaultPublicKey

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateKeyPairRequestVaultPublicKey from a JSON string
update_key_pair_request_vault_public_key_instance = UpdateKeyPairRequestVaultPublicKey.from_json(json)
# print the JSON string representation of the object
print(UpdateKeyPairRequestVaultPublicKey.to_json())

# convert the object into a dict
update_key_pair_request_vault_public_key_dict = update_key_pair_request_vault_public_key_instance.to_dict()
# create an instance of UpdateKeyPairRequestVaultPublicKey from a dict
update_key_pair_request_vault_public_key_from_dict = UpdateKeyPairRequestVaultPublicKey.from_dict(update_key_pair_request_vault_public_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


