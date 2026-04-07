# GetFederationStateSummaries200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**federation_states** | [**GetFederationStateSummaries200ResponseFederationStates**](GetFederationStateSummaries200ResponseFederationStates.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_state_summaries200_response import GetFederationStateSummaries200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationStateSummaries200Response from a JSON string
get_federation_state_summaries200_response_instance = GetFederationStateSummaries200Response.from_json(json)
# print the JSON string representation of the object
print(GetFederationStateSummaries200Response.to_json())

# convert the object into a dict
get_federation_state_summaries200_response_dict = get_federation_state_summaries200_response_instance.to_dict()
# create an instance of GetFederationStateSummaries200Response from a dict
get_federation_state_summaries200_response_from_dict = GetFederationStateSummaries200Response.from_dict(get_federation_state_summaries200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


