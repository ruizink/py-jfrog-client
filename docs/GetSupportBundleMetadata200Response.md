# GetSupportBundleMetadata200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**artifactory** | [**CreateSupportBundle200ResponseArtifactory**](CreateSupportBundle200ResponseArtifactory.md) |  | [optional] 
**parameters** | [**SupportBundleParameters**](SupportBundleParameters.md) |  | [optional] 
**created** | **datetime** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_support_bundle_metadata200_response import GetSupportBundleMetadata200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetSupportBundleMetadata200Response from a JSON string
get_support_bundle_metadata200_response_instance = GetSupportBundleMetadata200Response.from_json(json)
# print the JSON string representation of the object
print(GetSupportBundleMetadata200Response.to_json())

# convert the object into a dict
get_support_bundle_metadata200_response_dict = get_support_bundle_metadata200_response_instance.to_dict()
# create an instance of GetSupportBundleMetadata200Response from a dict
get_support_bundle_metadata200_response_from_dict = GetSupportBundleMetadata200Response.from_dict(get_support_bundle_metadata200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


