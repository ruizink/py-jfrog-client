# HashicorpVaultCertificateAuth


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**client_certificate** | **str** | Client certificate (PEM). | [optional] 
**client_private_key** | **str** | Client private key (PEM). | [optional] 

## Example

```python
from jfrog_client.models.hashicorp_vault_certificate_auth import HashicorpVaultCertificateAuth

# TODO update the JSON string below
json = "{}"
# create an instance of HashicorpVaultCertificateAuth from a JSON string
hashicorp_vault_certificate_auth_instance = HashicorpVaultCertificateAuth.from_json(json)
# print the JSON string representation of the object
print(HashicorpVaultCertificateAuth.to_json())

# convert the object into a dict
hashicorp_vault_certificate_auth_dict = hashicorp_vault_certificate_auth_instance.to_dict()
# create an instance of HashicorpVaultCertificateAuth from a dict
hashicorp_vault_certificate_auth_from_dict = HashicorpVaultCertificateAuth.from_dict(hashicorp_vault_certificate_auth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


