# VaultConfigRequest

Request body when creating, updating, or testing a Vault configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**type** | **str** |  | 
**config** | [**HashicorpVaultConfig**](HashicorpVaultConfig.md) |  | 

## Example

```python
from jfrog_client.models.vault_config_request import VaultConfigRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VaultConfigRequest from a JSON string
vault_config_request_instance = VaultConfigRequest.from_json(json)
# print the JSON string representation of the object
print(VaultConfigRequest.to_json())

# convert the object into a dict
vault_config_request_dict = vault_config_request_instance.to_dict()
# create an instance of VaultConfigRequest from a dict
vault_config_request_from_dict = VaultConfigRequest.from_dict(vault_config_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


