# GetRetentionPolicyConfiguration200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic** | **bool** |  | [optional] 
**num_of_versions_to_keep_per_release_bundle** | **int** |  | [optional] 
**max_days_to_keep** | **int** |  | [optional] 
**cron_pattern** | **str** |  | [optional] 
**max_deletions_per_background_run** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_retention_policy_configuration200_response import GetRetentionPolicyConfiguration200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetRetentionPolicyConfiguration200Response from a JSON string
get_retention_policy_configuration200_response_instance = GetRetentionPolicyConfiguration200Response.from_json(json)
# print the JSON string representation of the object
print(GetRetentionPolicyConfiguration200Response.to_json())

# convert the object into a dict
get_retention_policy_configuration200_response_dict = get_retention_policy_configuration200_response_instance.to_dict()
# create an instance of GetRetentionPolicyConfiguration200Response from a dict
get_retention_policy_configuration200_response_from_dict = GetRetentionPolicyConfiguration200Response.from_dict(get_retention_policy_configuration200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


