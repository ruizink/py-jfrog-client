# SetDistributionPublicGpgKey200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kid** | **str** |  | [optional] 
**fingerprint** | **str** |  | [optional] 
**key** | **str** |  | [optional] 
**issued_on** | **datetime** |  | [optional] 
**issued_by** | **str** |  | [optional] 
**valid_until** | **datetime** |  | [optional] 

## Example

```python
from jfrog_client.models.set_distribution_public_gpg_key200_response import SetDistributionPublicGpgKey200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SetDistributionPublicGpgKey200Response from a JSON string
set_distribution_public_gpg_key200_response_instance = SetDistributionPublicGpgKey200Response.from_json(json)
# print the JSON string representation of the object
print(SetDistributionPublicGpgKey200Response.to_json())

# convert the object into a dict
set_distribution_public_gpg_key200_response_dict = set_distribution_public_gpg_key200_response_instance.to_dict()
# create an instance of SetDistributionPublicGpgKey200Response from a dict
set_distribution_public_gpg_key200_response_from_dict = SetDistributionPublicGpgKey200Response.from_dict(set_distribution_public_gpg_key200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


