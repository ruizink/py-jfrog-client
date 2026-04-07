# HashicorpVaultConfig

HashiCorp Vault connection settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth** | [**HashicorpVaultConfigAuth**](HashicorpVaultConfigAuth.md) |  | [optional] 
**url** | **str** | Vault server URL. | [optional] 
**mounts** | [**List[HashicorpVaultMount]**](HashicorpVaultMount.md) | Secret engine mounts. | [optional] 

## Example

```python
from jfrog_client.models.hashicorp_vault_config import HashicorpVaultConfig

# TODO update the JSON string below
json = "{}"
# create an instance of HashicorpVaultConfig from a JSON string
hashicorp_vault_config_instance = HashicorpVaultConfig.from_json(json)
# print the JSON string representation of the object
print(HashicorpVaultConfig.to_json())

# convert the object into a dict
hashicorp_vault_config_dict = hashicorp_vault_config_instance.to_dict()
# create an instance of HashicorpVaultConfig from a dict
hashicorp_vault_config_from_dict = HashicorpVaultConfig.from_dict(hashicorp_vault_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


