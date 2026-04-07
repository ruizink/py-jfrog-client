# SetBasicAuthenticationStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Set to true to enable or false to disable basic authentication | 

## Example

```python
from jfrog_client.models.set_basic_authentication_status_request import SetBasicAuthenticationStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetBasicAuthenticationStatusRequest from a JSON string
set_basic_authentication_status_request_instance = SetBasicAuthenticationStatusRequest.from_json(json)
# print the JSON string representation of the object
print(SetBasicAuthenticationStatusRequest.to_json())

# convert the object into a dict
set_basic_authentication_status_request_dict = set_basic_authentication_status_request_instance.to_dict()
# create an instance of SetBasicAuthenticationStatusRequest from a dict
set_basic_authentication_status_request_from_dict = SetBasicAuthenticationStatusRequest.from_dict(set_basic_authentication_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


