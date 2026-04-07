# GetFederationStateDetails200ResponseFederationsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_repo_key** | **str** |  | [optional] 
**member_info_list** | [**List[GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner]**](GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner.md) |  | [optional] 
**priority** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_state_details200_response_federations_inner import GetFederationStateDetails200ResponseFederationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationStateDetails200ResponseFederationsInner from a JSON string
get_federation_state_details200_response_federations_inner_instance = GetFederationStateDetails200ResponseFederationsInner.from_json(json)
# print the JSON string representation of the object
print(GetFederationStateDetails200ResponseFederationsInner.to_json())

# convert the object into a dict
get_federation_state_details200_response_federations_inner_dict = get_federation_state_details200_response_federations_inner_instance.to_dict()
# create an instance of GetFederationStateDetails200ResponseFederationsInner from a dict
get_federation_state_details200_response_federations_inner_from_dict = GetFederationStateDetails200ResponseFederationsInner.from_dict(get_federation_state_details200_response_federations_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


