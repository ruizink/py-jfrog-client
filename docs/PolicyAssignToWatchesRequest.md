# PolicyAssignToWatchesRequest

Request body containing the list of watch names to assign the policy to. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**watches** | **List[str]** | List of watch names to assign the policy to. Each watch is processed independently.  | 

## Example

```python
from jfrog_client.models.policy_assign_to_watches_request import PolicyAssignToWatchesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyAssignToWatchesRequest from a JSON string
policy_assign_to_watches_request_instance = PolicyAssignToWatchesRequest.from_json(json)
# print the JSON string representation of the object
print(PolicyAssignToWatchesRequest.to_json())

# convert the object into a dict
policy_assign_to_watches_request_dict = policy_assign_to_watches_request_instance.to_dict()
# create an instance of PolicyAssignToWatchesRequest from a dict
policy_assign_to_watches_request_from_dict = PolicyAssignToWatchesRequest.from_dict(policy_assign_to_watches_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


