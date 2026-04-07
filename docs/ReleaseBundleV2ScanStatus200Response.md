# ReleaseBundleV2ScanStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**details** | [**ArtifactScanStatus200ResponseDetails**](ArtifactScanStatus200ResponseDetails.md) |  | [optional] 

## Example

```python
from jfrog_client.models.release_bundle_v2_scan_status200_response import ReleaseBundleV2ScanStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleV2ScanStatus200Response from a JSON string
release_bundle_v2_scan_status200_response_instance = ReleaseBundleV2ScanStatus200Response.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleV2ScanStatus200Response.to_json())

# convert the object into a dict
release_bundle_v2_scan_status200_response_dict = release_bundle_v2_scan_status200_response_instance.to_dict()
# create an instance of ReleaseBundleV2ScanStatus200Response from a dict
release_bundle_v2_scan_status200_response_from_dict = ReleaseBundleV2ScanStatus200Response.from_dict(release_bundle_v2_scan_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


