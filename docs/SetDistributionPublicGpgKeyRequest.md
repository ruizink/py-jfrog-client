# SetDistributionPublicGpgKeyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alias** | **str** | The alias for the key | 
**public_key** | **str** | The GPG public key in PGP format | 

## Example

```python
from jfrog_client.models.set_distribution_public_gpg_key_request import SetDistributionPublicGpgKeyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetDistributionPublicGpgKeyRequest from a JSON string
set_distribution_public_gpg_key_request_instance = SetDistributionPublicGpgKeyRequest.from_json(json)
# print the JSON string representation of the object
print(SetDistributionPublicGpgKeyRequest.to_json())

# convert the object into a dict
set_distribution_public_gpg_key_request_dict = set_distribution_public_gpg_key_request_instance.to_dict()
# create an instance of SetDistributionPublicGpgKeyRequest from a dict
set_distribution_public_gpg_key_request_from_dict = SetDistributionPublicGpgKeyRequest.from_dict(set_distribution_public_gpg_key_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


