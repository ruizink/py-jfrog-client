# VaultConfig

A stored Vault integration configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | 
**type** | **str** |  | 
**config** | [**HashicorpVaultConfig**](HashicorpVaultConfig.md) |  | 

## Example

```python
from jfrog_client.models.vault_config import VaultConfig

# TODO update the JSON string below
json = "{}"
# create an instance of VaultConfig from a JSON string
vault_config_instance = VaultConfig.from_json(json)
# print the JSON string representation of the object
print(VaultConfig.to_json())

# convert the object into a dict
vault_config_dict = vault_config_instance.to_dict()
# create an instance of VaultConfig from a dict
vault_config_from_dict = VaultConfig.from_dict(vault_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


