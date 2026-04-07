# PolicyApiActionsResponse

Actions configured for a v1 policy rule. Note: v1 actions do not include block_release_bundle_distribution, block_release_bundle_promotion, create_ticket_enabled, or build_failure_grace_period_in_days — those are available in v2 only. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mails** | **List[str]** | Email addresses to notify. | [optional] 
**webhooks** | **List[str]** | Webhook names to invoke. | [optional] 
**fail_build** | **bool** | Whether builds are failed when this rule triggers. | [optional] 
**block_download** | [**PolicyBlockDownload**](PolicyBlockDownload.md) |  | [optional] 
**custom_severity** | **str** | Overridden severity for the generated violation.  | [optional] 
**notify_watch_recipients** | **bool** | Whether watch subscribers are notified. | [optional] 
**notify_deployer** | **bool** | Whether the deployer is notified. | [optional] 

## Example

```python
from jfrog_client.models.policy_api_actions_response import PolicyApiActionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyApiActionsResponse from a JSON string
policy_api_actions_response_instance = PolicyApiActionsResponse.from_json(json)
# print the JSON string representation of the object
print(PolicyApiActionsResponse.to_json())

# convert the object into a dict
policy_api_actions_response_dict = policy_api_actions_response_instance.to_dict()
# create an instance of PolicyApiActionsResponse from a dict
policy_api_actions_response_from_dict = PolicyApiActionsResponse.from_dict(policy_api_actions_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


