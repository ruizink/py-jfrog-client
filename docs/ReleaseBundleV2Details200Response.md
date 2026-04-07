# ReleaseBundleV2Details200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**operation** | **str** |  | [optional] 
**status** | **str** | Status: blocked, allowed. | [optional] 
**ui_violations_url** | **str** |  | [optional] 
**violations** | [**ReleaseBundleV2Details200ResponseViolations**](ReleaseBundleV2Details200ResponseViolations.md) |  | [optional] 

## Example

```python
from jfrog_client.models.release_bundle_v2_details200_response import ReleaseBundleV2Details200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleV2Details200Response from a JSON string
release_bundle_v2_details200_response_instance = ReleaseBundleV2Details200Response.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleV2Details200Response.to_json())

# convert the object into a dict
release_bundle_v2_details200_response_dict = release_bundle_v2_details200_response_instance.to_dict()
# create an instance of ReleaseBundleV2Details200Response from a dict
release_bundle_v2_details200_response_from_dict = ReleaseBundleV2Details200Response.from_dict(release_bundle_v2_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


