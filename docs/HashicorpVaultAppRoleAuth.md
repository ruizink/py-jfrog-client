# HashicorpVaultAppRoleAuth


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**role_id** | **str** | AppRole role ID. | [optional] 
**secret_id** | **str** | AppRole secret ID. | [optional] 

## Example

```python
from jfrog_client.models.hashicorp_vault_app_role_auth import HashicorpVaultAppRoleAuth

# TODO update the JSON string below
json = "{}"
# create an instance of HashicorpVaultAppRoleAuth from a JSON string
hashicorp_vault_app_role_auth_instance = HashicorpVaultAppRoleAuth.from_json(json)
# print the JSON string representation of the object
print(HashicorpVaultAppRoleAuth.to_json())

# convert the object into a dict
hashicorp_vault_app_role_auth_dict = hashicorp_vault_app_role_auth_instance.to_dict()
# create an instance of HashicorpVaultAppRoleAuth from a dict
hashicorp_vault_app_role_auth_from_dict = HashicorpVaultAppRoleAuth.from_dict(hashicorp_vault_app_role_auth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


