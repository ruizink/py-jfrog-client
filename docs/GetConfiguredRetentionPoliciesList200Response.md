# GetConfiguredRetentionPoliciesList200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**items** | [**List[GetConfiguredRetentionPoliciesList200ResponseItemsInner]**](GetConfiguredRetentionPoliciesList200ResponseItemsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_configured_retention_policies_list200_response import GetConfiguredRetentionPoliciesList200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetConfiguredRetentionPoliciesList200Response from a JSON string
get_configured_retention_policies_list200_response_instance = GetConfiguredRetentionPoliciesList200Response.from_json(json)
# print the JSON string representation of the object
print(GetConfiguredRetentionPoliciesList200Response.to_json())

# convert the object into a dict
get_configured_retention_policies_list200_response_dict = get_configured_retention_policies_list200_response_instance.to_dict()
# create an instance of GetConfiguredRetentionPoliciesList200Response from a dict
get_configured_retention_policies_list200_response_from_dict = GetConfiguredRetentionPoliciesList200Response.from_dict(get_configured_retention_policies_list200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


