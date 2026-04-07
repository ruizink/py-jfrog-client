# VerifyConnection400Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[DeleteCertificate200Response]**](DeleteCertificate200Response.md) |  | [optional] 

## Example

```python
from jfrog_client.models.verify_connection400_response import VerifyConnection400Response

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyConnection400Response from a JSON string
verify_connection400_response_instance = VerifyConnection400Response.from_json(json)
# print the JSON string representation of the object
print(VerifyConnection400Response.to_json())

# convert the object into a dict
verify_connection400_response_dict = verify_connection400_response_instance.to_dict()
# create an instance of VerifyConnection400Response from a dict
verify_connection400_response_from_dict = VerifyConnection400Response.from_dict(verify_connection400_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


