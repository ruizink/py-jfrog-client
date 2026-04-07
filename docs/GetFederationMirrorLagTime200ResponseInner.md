# GetFederationMirrorLagTime200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_repo_key** | **str** |  | [optional] 
**remote_url** | **str** |  | [optional] 
**remote_repo_key** | **str** |  | [optional] 
**lag_in_ms** | **int** |  | [optional] 
**event_registration_time_stamp** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_mirror_lag_time200_response_inner import GetFederationMirrorLagTime200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationMirrorLagTime200ResponseInner from a JSON string
get_federation_mirror_lag_time200_response_inner_instance = GetFederationMirrorLagTime200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetFederationMirrorLagTime200ResponseInner.to_json())

# convert the object into a dict
get_federation_mirror_lag_time200_response_inner_dict = get_federation_mirror_lag_time200_response_inner_instance.to_dict()
# create an instance of GetFederationMirrorLagTime200ResponseInner from a dict
get_federation_mirror_lag_time200_response_inner_from_dict = GetFederationMirrorLagTime200ResponseInner.from_dict(get_federation_mirror_lag_time200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


