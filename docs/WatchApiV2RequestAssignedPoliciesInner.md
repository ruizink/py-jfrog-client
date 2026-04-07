# WatchApiV2RequestAssignedPoliciesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the policy. | 
**type** | **str** | Type of the policy. | 

## Example

```python
from jfrog_client.models.watch_api_v2_request_assigned_policies_inner import WatchApiV2RequestAssignedPoliciesInner

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestAssignedPoliciesInner from a JSON string
watch_api_v2_request_assigned_policies_inner_instance = WatchApiV2RequestAssignedPoliciesInner.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestAssignedPoliciesInner.to_json())

# convert the object into a dict
watch_api_v2_request_assigned_policies_inner_dict = watch_api_v2_request_assigned_policies_inner_instance.to_dict()
# create an instance of WatchApiV2RequestAssignedPoliciesInner from a dict
watch_api_v2_request_assigned_policies_inner_from_dict = WatchApiV2RequestAssignedPoliciesInner.from_dict(watch_api_v2_request_assigned_policies_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


