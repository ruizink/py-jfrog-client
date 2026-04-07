# PolicyAssignToWatchesResponse

Result of the assignment operation. The `result` object contains one entry per watch name from the request, with a status message indicating the outcome. Possible status values: \"Policy assigned successfully to Watch\", \"Policy was already assigned to Watch\", \"Watch was not found\", \"Error Assigning Policy to Watch\". 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | [**PolicyAssignToWatchesResponseResult**](PolicyAssignToWatchesResponseResult.md) |  | [optional] 

## Example

```python
from jfrog_client.models.policy_assign_to_watches_response import PolicyAssignToWatchesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyAssignToWatchesResponse from a JSON string
policy_assign_to_watches_response_instance = PolicyAssignToWatchesResponse.from_json(json)
# print the JSON string representation of the object
print(PolicyAssignToWatchesResponse.to_json())

# convert the object into a dict
policy_assign_to_watches_response_dict = policy_assign_to_watches_response_instance.to_dict()
# create an instance of PolicyAssignToWatchesResponse from a dict
policy_assign_to_watches_response_from_dict = PolicyAssignToWatchesResponse.from_dict(policy_assign_to_watches_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


