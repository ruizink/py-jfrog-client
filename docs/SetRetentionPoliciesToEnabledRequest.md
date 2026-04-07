# SetRetentionPoliciesToEnabledRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** | Enable or disable retention policies | 

## Example

```python
from jfrog_client.models.set_retention_policies_to_enabled_request import SetRetentionPoliciesToEnabledRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetRetentionPoliciesToEnabledRequest from a JSON string
set_retention_policies_to_enabled_request_instance = SetRetentionPoliciesToEnabledRequest.from_json(json)
# print the JSON string representation of the object
print(SetRetentionPoliciesToEnabledRequest.to_json())

# convert the object into a dict
set_retention_policies_to_enabled_request_dict = set_retention_policies_to_enabled_request_instance.to_dict()
# create an instance of SetRetentionPoliciesToEnabledRequest from a dict
set_retention_policies_to_enabled_request_from_dict = SetRetentionPoliciesToEnabledRequest.from_dict(set_retention_policies_to_enabled_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


