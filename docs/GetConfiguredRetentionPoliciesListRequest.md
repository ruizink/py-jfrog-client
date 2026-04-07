# GetConfiguredRetentionPoliciesListRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_keep** | **bool** | Include bundles marked as keep | [optional] 
**type** | **str** | The retention policy type | 

## Example

```python
from jfrog_client.models.get_configured_retention_policies_list_request import GetConfiguredRetentionPoliciesListRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetConfiguredRetentionPoliciesListRequest from a JSON string
get_configured_retention_policies_list_request_instance = GetConfiguredRetentionPoliciesListRequest.from_json(json)
# print the JSON string representation of the object
print(GetConfiguredRetentionPoliciesListRequest.to_json())

# convert the object into a dict
get_configured_retention_policies_list_request_dict = get_configured_retention_policies_list_request_instance.to_dict()
# create an instance of GetConfiguredRetentionPoliciesListRequest from a dict
get_configured_retention_policies_list_request_from_dict = GetConfiguredRetentionPoliciesListRequest.from_dict(get_configured_retention_policies_list_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


