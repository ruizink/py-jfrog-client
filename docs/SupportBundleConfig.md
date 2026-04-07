# SupportBundleConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Support bundle name | [optional] 
**description** | **str** | Support bundle description | [optional] 
**parameters** | [**SupportBundleParameters**](SupportBundleParameters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.support_bundle_config import SupportBundleConfig

# TODO update the JSON string below
json = "{}"
# create an instance of SupportBundleConfig from a JSON string
support_bundle_config_instance = SupportBundleConfig.from_json(json)
# print the JSON string representation of the object
print(SupportBundleConfig.to_json())

# convert the object into a dict
support_bundle_config_dict = support_bundle_config_instance.to_dict()
# create an instance of SupportBundleConfig from a dict
support_bundle_config_from_dict = SupportBundleConfig.from_dict(support_bundle_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


