# GetFederationConnectionDetails200ResponseMemberConnectionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_repo_key** | **str** |  | [optional] 
**local_platform_url** | **str** |  | [optional] 
**remote_repo_key** | **str** |  | [optional] 
**remote_platform_url** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**lag_in_ms** | **int** |  | [optional] 
**queued_events** | **int** |  | [optional] 
**disabled** | **bool** |  | [optional] 
**supported** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_connection_details200_response_member_connections_inner import GetFederationConnectionDetails200ResponseMemberConnectionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationConnectionDetails200ResponseMemberConnectionsInner from a JSON string
get_federation_connection_details200_response_member_connections_inner_instance = GetFederationConnectionDetails200ResponseMemberConnectionsInner.from_json(json)
# print the JSON string representation of the object
print(GetFederationConnectionDetails200ResponseMemberConnectionsInner.to_json())

# convert the object into a dict
get_federation_connection_details200_response_member_connections_inner_dict = get_federation_connection_details200_response_member_connections_inner_instance.to_dict()
# create an instance of GetFederationConnectionDetails200ResponseMemberConnectionsInner from a dict
get_federation_connection_details200_response_member_connections_inner_from_dict = GetFederationConnectionDetails200ResponseMemberConnectionsInner.from_dict(get_federation_connection_details200_response_member_connections_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


