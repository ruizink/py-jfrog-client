# SetRetentionPolicyConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic** | **bool** | Enable automatic retention | [optional] 
**num_of_versions_to_keep_per_release_bundle** | **int** | Number of versions to keep per release bundle | [optional] 
**max_days_to_keep** | **int** | Maximum days to keep | [optional] 
**cron_pattern** | **str** | Cron pattern for scheduled retention | [optional] 
**max_deletions_per_background_run** | **int** | Maximum deletions per background run | [optional] 

## Example

```python
from jfrog_client.models.set_retention_policy_configuration_request import SetRetentionPolicyConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetRetentionPolicyConfigurationRequest from a JSON string
set_retention_policy_configuration_request_instance = SetRetentionPolicyConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(SetRetentionPolicyConfigurationRequest.to_json())

# convert the object into a dict
set_retention_policy_configuration_request_dict = set_retention_policy_configuration_request_instance.to_dict()
# create an instance of SetRetentionPolicyConfigurationRequest from a dict
set_retention_policy_configuration_request_from_dict = SetRetentionPolicyConfigurationRequest.from_dict(set_retention_policy_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


