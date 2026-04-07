# GetFederationStateSummaries200ResponseFederationStates


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**healthy** | **int** |  | [optional] 
**not_available** | **int** |  | [optional] 
**delayed** | **int** |  | [optional] 
**pending_fs** | **int** |  | [optional] 
**full_sync_running** | **int** |  | [optional] 
**error** | **int** |  | [optional] 
**disabled** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_state_summaries200_response_federation_states import GetFederationStateSummaries200ResponseFederationStates

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationStateSummaries200ResponseFederationStates from a JSON string
get_federation_state_summaries200_response_federation_states_instance = GetFederationStateSummaries200ResponseFederationStates.from_json(json)
# print the JSON string representation of the object
print(GetFederationStateSummaries200ResponseFederationStates.to_json())

# convert the object into a dict
get_federation_state_summaries200_response_federation_states_dict = get_federation_state_summaries200_response_federation_states_instance.to_dict()
# create an instance of GetFederationStateSummaries200ResponseFederationStates from a dict
get_federation_state_summaries200_response_federation_states_from_dict = GetFederationStateSummaries200ResponseFederationStates.from_dict(get_federation_state_summaries200_response_federation_states_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


