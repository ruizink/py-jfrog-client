# GetBasicAuthenticationStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Whether basic authentication is enabled | [optional] 

## Example

```python
from jfrog_client.models.get_basic_authentication_status200_response import GetBasicAuthenticationStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetBasicAuthenticationStatus200Response from a JSON string
get_basic_authentication_status200_response_instance = GetBasicAuthenticationStatus200Response.from_json(json)
# print the JSON string representation of the object
print(GetBasicAuthenticationStatus200Response.to_json())

# convert the object into a dict
get_basic_authentication_status200_response_dict = get_basic_authentication_status200_response_instance.to_dict()
# create an instance of GetBasicAuthenticationStatus200Response from a dict
get_basic_authentication_status200_response_from_dict = GetBasicAuthenticationStatus200Response.from_dict(get_basic_authentication_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


