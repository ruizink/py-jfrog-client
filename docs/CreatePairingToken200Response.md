# CreatePairingToken200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pairing_token** | **str** | JWT pairing token | [optional] 

## Example

```python
from jfrog_client.models.create_pairing_token200_response import CreatePairingToken200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePairingToken200Response from a JSON string
create_pairing_token200_response_instance = CreatePairingToken200Response.from_json(json)
# print the JSON string representation of the object
print(CreatePairingToken200Response.to_json())

# convert the object into a dict
create_pairing_token200_response_dict = create_pairing_token200_response_instance.to_dict()
# create an instance of CreatePairingToken200Response from a dict
create_pairing_token200_response_from_dict = CreatePairingToken200Response.from_dict(create_pairing_token200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


