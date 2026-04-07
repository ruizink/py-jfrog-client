# GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** |  | [optional] 
**repo_key** | **str** |  | [optional] 
**aggregated_status** | **str** |  | [optional] 
**is_supported** | **bool** |  | [optional] 
**is_disabled** | **bool** |  | [optional] 
**is_in_lag** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federation_state_details200_response_federations_inner_member_info_list_inner import GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner from a JSON string
get_federation_state_details200_response_federations_inner_member_info_list_inner_instance = GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner.from_json(json)
# print the JSON string representation of the object
print(GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner.to_json())

# convert the object into a dict
get_federation_state_details200_response_federations_inner_member_info_list_inner_dict = get_federation_state_details200_response_federations_inner_member_info_list_inner_instance.to_dict()
# create an instance of GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner from a dict
get_federation_state_details200_response_federations_inner_member_info_list_inner_from_dict = GetFederationStateDetails200ResponseFederationsInnerMemberInfoListInner.from_dict(get_federation_state_details200_response_federations_inner_member_info_list_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


