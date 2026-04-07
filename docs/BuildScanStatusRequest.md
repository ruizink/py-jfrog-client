# BuildScanStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | Name of the build. | 
**build_number** | **str** | Build number. | 

## Example

```python
from jfrog_client.models.build_scan_status_request import BuildScanStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BuildScanStatusRequest from a JSON string
build_scan_status_request_instance = BuildScanStatusRequest.from_json(json)
# print the JSON string representation of the object
print(BuildScanStatusRequest.to_json())

# convert the object into a dict
build_scan_status_request_dict = build_scan_status_request_instance.to_dict()
# create an instance of BuildScanStatusRequest from a dict
build_scan_status_request_from_dict = BuildScanStatusRequest.from_dict(build_scan_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


