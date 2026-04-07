# PolicyActions

Actions to execute when a rule's criteria are matched. Multiple actions can be combined. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_severity** | **str** | Override the severity of the generated violation. Applies only to Operational Risk and License type policies.  | [optional] 
**webhooks** | **List[str]** | Webhook names to invoke when the rule is triggered. | [optional] 
**notify_watch_recipients** | **bool** | Notify users subscribed to the watch. | [optional] 
**notify_deployer** | **bool** | Notify the user who deployed the artifact. | [optional] 
**mails** | **List[str]** | Email addresses to notify. | [optional] 
**create_ticket_enabled** | **bool** | Automatically create a Jira ticket for the violation. Requires a configured Jira integration.  | [optional] 
**block_download** | [**PolicyBlockDownload**](PolicyBlockDownload.md) |  | [optional] 
**block_release_bundle_distribution** | **bool** | Block distribution of release bundles that match the rule. | [optional] 
**block_release_bundle_promotion** | **bool** | Block promotion of release bundles that match the rule. | [optional] 
**fail_build** | **bool** | Fail the build if the rule is triggered. | [optional] 
**build_failure_grace_period_in_days** | **int** | Grace period in days before the build is failed. Allows time to address the issue without immediately blocking CI/CD.  | [optional] 

## Example

```python
from jfrog_client.models.policy_actions import PolicyActions

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyActions from a JSON string
policy_actions_instance = PolicyActions.from_json(json)
# print the JSON string representation of the object
print(PolicyActions.to_json())

# convert the object into a dict
policy_actions_dict = policy_actions_instance.to_dict()
# create an instance of PolicyActions from a dict
policy_actions_from_dict = PolicyActions.from_dict(policy_actions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


