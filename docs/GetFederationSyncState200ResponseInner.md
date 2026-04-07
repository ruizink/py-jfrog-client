# GetFederationSyncState200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**members** | [**List[GetFederationSyncState200ResponseInnerMembersInner]**](GetFederationSyncState200ResponseInnerMembersInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_sync_state200_response_inner import GetFederationSyncState200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationSyncState200ResponseInner from a JSON string
get_federation_sync_state200_response_inner_instance = GetFederationSyncState200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetFederationSyncState200ResponseInner.to_json())

# convert the object into a dict
get_federation_sync_state200_response_inner_dict = get_federation_sync_state200_response_inner_instance.to_dict()
# create an instance of GetFederationSyncState200ResponseInner from a dict
get_federation_sync_state200_response_inner_from_dict = GetFederationSyncState200ResponseInner.from_dict(get_federation_sync_state200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


