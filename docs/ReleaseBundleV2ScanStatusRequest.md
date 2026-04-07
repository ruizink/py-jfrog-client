# ReleaseBundleV2ScanStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Release bundle name. | 
**version** | **str** | Release bundle version. | 
**project** | **str** | Project key the release bundle belongs to. | [optional] 

## Example

```python
from jfrog_client.models.release_bundle_v2_scan_status_request import ReleaseBundleV2ScanStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleV2ScanStatusRequest from a JSON string
release_bundle_v2_scan_status_request_instance = ReleaseBundleV2ScanStatusRequest.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleV2ScanStatusRequest.to_json())

# convert the object into a dict
release_bundle_v2_scan_status_request_dict = release_bundle_v2_scan_status_request_instance.to_dict()
# create an instance of ReleaseBundleV2ScanStatusRequest from a dict
release_bundle_v2_scan_status_request_from_dict = ReleaseBundleV2ScanStatusRequest.from_dict(release_bundle_v2_scan_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


