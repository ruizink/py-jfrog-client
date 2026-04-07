# GetFederationStateDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**federations** | [**List[GetFederationStateDetails200ResponseFederationsInner]**](GetFederationStateDetails200ResponseFederationsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_state_details200_response import GetFederationStateDetails200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationStateDetails200Response from a JSON string
get_federation_state_details200_response_instance = GetFederationStateDetails200Response.from_json(json)
# print the JSON string representation of the object
print(GetFederationStateDetails200Response.to_json())

# convert the object into a dict
get_federation_state_details200_response_dict = get_federation_state_details200_response_instance.to_dict()
# create an instance of GetFederationStateDetails200Response from a dict
get_federation_state_details200_response_from_dict = GetFederationStateDetails200Response.from_dict(get_federation_state_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


