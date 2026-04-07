# GetFederationConnectionDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**member_connections** | [**List[GetFederationConnectionDetails200ResponseMemberConnectionsInner]**](GetFederationConnectionDetails200ResponseMemberConnectionsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_connection_details200_response import GetFederationConnectionDetails200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationConnectionDetails200Response from a JSON string
get_federation_connection_details200_response_instance = GetFederationConnectionDetails200Response.from_json(json)
# print the JSON string representation of the object
print(GetFederationConnectionDetails200Response.to_json())

# convert the object into a dict
get_federation_connection_details200_response_dict = get_federation_connection_details200_response_instance.to_dict()
# create an instance of GetFederationConnectionDetails200Response from a dict
get_federation_connection_details200_response_from_dict = GetFederationConnectionDetails200Response.from_dict(get_federation_connection_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


