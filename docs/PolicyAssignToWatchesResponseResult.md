# PolicyAssignToWatchesResponseResult

Map of watch name to assignment status string. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**watch_name** | **str** | Status message for the watch. Key is the watch name.  | [optional] 

## Example

```python
from jfrog_client.models.policy_assign_to_watches_response_result import PolicyAssignToWatchesResponseResult

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyAssignToWatchesResponseResult from a JSON string
policy_assign_to_watches_response_result_instance = PolicyAssignToWatchesResponseResult.from_json(json)
# print the JSON string representation of the object
print(PolicyAssignToWatchesResponseResult.to_json())

# convert the object into a dict
policy_assign_to_watches_response_result_dict = policy_assign_to_watches_response_result_instance.to_dict()
# create an instance of PolicyAssignToWatchesResponseResult from a dict
policy_assign_to_watches_response_result_from_dict = PolicyAssignToWatchesResponseResult.from_dict(policy_assign_to_watches_response_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


