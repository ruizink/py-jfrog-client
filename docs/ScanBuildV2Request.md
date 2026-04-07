# ScanBuildV2Request


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | Name of the build. | 
**build_number** | **str** | Build number. | 
**project** | **str** | Project key the build belongs to. | [optional] 
**rescan** | **bool** | Flag to rescan the build. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v2_request import ScanBuildV2Request

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV2Request from a JSON string
scan_build_v2_request_instance = ScanBuildV2Request.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV2Request.to_json())

# convert the object into a dict
scan_build_v2_request_dict = scan_build_v2_request_instance.to_dict()
# create an instance of ScanBuildV2Request from a dict
scan_build_v2_request_from_dict = ScanBuildV2Request.from_dict(scan_build_v2_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


