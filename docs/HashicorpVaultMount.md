# HashicorpVaultMount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** | Mount path. | [optional] 
**type** | **str** | Secret engine type. | [optional] 

## Example

```python
from jfrog_client.models.hashicorp_vault_mount import HashicorpVaultMount

# TODO update the JSON string below
json = "{}"
# create an instance of HashicorpVaultMount from a JSON string
hashicorp_vault_mount_instance = HashicorpVaultMount.from_json(json)
# print the JSON string representation of the object
print(HashicorpVaultMount.to_json())

# convert the object into a dict
hashicorp_vault_mount_dict = hashicorp_vault_mount_instance.to_dict()
# create an instance of HashicorpVaultMount from a dict
hashicorp_vault_mount_from_dict = HashicorpVaultMount.from_dict(hashicorp_vault_mount_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


