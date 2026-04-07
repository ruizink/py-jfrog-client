# PolicyActionsV2Response

Actions configured for a v2 policy rule. Includes all v1 action fields plus: build_failure_grace_period_in_days, block_release_bundle_distribution, block_release_bundle_promotion, and create_ticket_enabled. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mails** | **List[str]** | Email addresses to notify. | [optional] 
**webhooks** | **List[str]** | Webhook names to invoke. | [optional] 
**fail_build** | **bool** | Whether builds are failed when this rule triggers. | [optional] 
**build_failure_grace_period_in_days** | **int** | Grace period in days before the build is failed.  | [optional] 
**block_download** | [**PolicyBlockDownload**](PolicyBlockDownload.md) |  | [optional] 
**block_release_bundle_distribution** | **bool** | Whether distribution of release bundles is blocked. | [optional] 
**block_release_bundle_promotion** | **bool** | Whether promotion of release bundles is blocked. | [optional] 
**custom_severity** | **str** | Overridden severity for the generated violation. Applies only to Operational Risk and License type policies.  | [optional] 
**notify_watch_recipients** | **bool** | Whether watch subscribers are notified. | [optional] 
**notify_deployer** | **bool** | Whether the deployer is notified. | [optional] 
**create_ticket_enabled** | **bool** | Whether a Jira ticket is automatically created. Requires a configured Jira integration.  | [optional] 

## Example

```python
from jfrog_client.models.policy_actions_v2_response import PolicyActionsV2Response

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyActionsV2Response from a JSON string
policy_actions_v2_response_instance = PolicyActionsV2Response.from_json(json)
# print the JSON string representation of the object
print(PolicyActionsV2Response.to_json())

# convert the object into a dict
policy_actions_v2_response_dict = policy_actions_v2_response_instance.to_dict()
# create an instance of PolicyActionsV2Response from a dict
policy_actions_v2_response_from_dict = PolicyActionsV2Response.from_dict(policy_actions_v2_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


