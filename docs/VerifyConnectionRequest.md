# VerifyConnectionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoint** | **str** | The URL that Artifactory should connect to | 
**username** | **str** | Username to be used for the connection test (optional) | [optional] 
**password** | **str** | Password to be used for the connection test (optional) | [optional] 

## Example

```python
from jfrog_client.models.verify_connection_request import VerifyConnectionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyConnectionRequest from a JSON string
verify_connection_request_instance = VerifyConnectionRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyConnectionRequest.to_json())

# convert the object into a dict
verify_connection_request_dict = verify_connection_request_instance.to_dict()
# create an instance of VerifyConnectionRequest from a dict
verify_connection_request_from_dict = VerifyConnectionRequest.from_dict(verify_connection_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


