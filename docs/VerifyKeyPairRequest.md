# VerifyKeyPairRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pair_name** | **str** |  | 
**pair_type** | **str** |  | 
**alias** | **str** |  | 
**private_key** | **str** |  | 
**public_key** | **str** |  | 
**passphrase** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.verify_key_pair_request import VerifyKeyPairRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyKeyPairRequest from a JSON string
verify_key_pair_request_instance = VerifyKeyPairRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyKeyPairRequest.to_json())

# convert the object into a dict
verify_key_pair_request_dict = verify_key_pair_request_instance.to_dict()
# create an instance of VerifyKeyPairRequest from a dict
verify_key_pair_request_from_dict = VerifyKeyPairRequest.from_dict(verify_key_pair_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


