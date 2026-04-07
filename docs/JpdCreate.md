# JpdCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | JPD name | 
**url** | **str** | JPD URL (e.g., https://example.jfrog.io) | 
**location** | [**JpdCreateLocation**](JpdCreateLocation.md) |  | 
**token** | **str** | Pairing token (JWT) or join key for authentication.  To obtain a pairing token, call the Create Pairing Token API on the target JPD: POST /access/api/v1/service_trust/pairing/mission-control  See [Create Pairing Token](https://docs.jfrog.com/administration/update/reference/createpairingtoken) for details.  | [optional] 
**username** | **str** | Username for basic authentication (alternative to token, for legacy services only) | [optional] 
**password** | **str** | Password for basic authentication (alternative to token, for legacy services only) | [optional] 
**tags** | **List[str]** | Tags for categorizing the JPD | [optional] 

## Example

```python
from jfrog_client.models.jpd_create import JpdCreate

# TODO update the JSON string below
json = "{}"
# create an instance of JpdCreate from a JSON string
jpd_create_instance = JpdCreate.from_json(json)
# print the JSON string representation of the object
print(JpdCreate.to_json())

# convert the object into a dict
jpd_create_dict = jpd_create_instance.to_dict()
# create an instance of JpdCreate from a dict
jpd_create_from_dict = JpdCreate.from_dict(jpd_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


