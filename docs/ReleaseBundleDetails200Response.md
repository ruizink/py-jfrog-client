# ReleaseBundleDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | Scan status of the release bundle. | [optional] 
**violations** | [**ReleaseBundleDetails200ResponseViolations**](ReleaseBundleDetails200ResponseViolations.md) |  | [optional] 

## Example

```python
from jfrog_client.models.release_bundle_details200_response import ReleaseBundleDetails200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleDetails200Response from a JSON string
release_bundle_details200_response_instance = ReleaseBundleDetails200Response.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleDetails200Response.to_json())

# convert the object into a dict
release_bundle_details200_response_dict = release_bundle_details200_response_instance.to_dict()
# create an instance of ReleaseBundleDetails200Response from a dict
release_bundle_details200_response_from_dict = ReleaseBundleDetails200Response.from_dict(release_bundle_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


