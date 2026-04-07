# HashicorpVaultConfigAuth

Authentication method (`AppRole`, `Certificate`, or `Agent`).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**role_id** | **str** | AppRole role ID. | [optional] 
**secret_id** | **str** | AppRole secret ID. | [optional] 
**client_certificate** | **str** | Client certificate (PEM). | [optional] 
**client_private_key** | **str** | Client private key (PEM). | [optional] 

## Example

```python
from jfrog_client.models.hashicorp_vault_config_auth import HashicorpVaultConfigAuth

# TODO update the JSON string below
json = "{}"
# create an instance of HashicorpVaultConfigAuth from a JSON string
hashicorp_vault_config_auth_instance = HashicorpVaultConfigAuth.from_json(json)
# print the JSON string representation of the object
print(HashicorpVaultConfigAuth.to_json())

# convert the object into a dict
hashicorp_vault_config_auth_dict = hashicorp_vault_config_auth_instance.to_dict()
# create an instance of HashicorpVaultConfigAuth from a dict
hashicorp_vault_config_auth_from_dict = HashicorpVaultConfigAuth.from_dict(hashicorp_vault_config_auth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


