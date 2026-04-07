# ReleaseBundleScanStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Release bundle name. | 
**version** | **str** | Release bundle version. | 

## Example

```python
from jfrog_client.models.release_bundle_scan_status_request import ReleaseBundleScanStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleScanStatusRequest from a JSON string
release_bundle_scan_status_request_instance = ReleaseBundleScanStatusRequest.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleScanStatusRequest.to_json())

# convert the object into a dict
release_bundle_scan_status_request_dict = release_bundle_scan_status_request_instance.to_dict()
# create an instance of ReleaseBundleScanStatusRequest from a dict
release_bundle_scan_status_request_from_dict = ReleaseBundleScanStatusRequest.from_dict(release_bundle_scan_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


