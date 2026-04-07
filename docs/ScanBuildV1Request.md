# ScanBuildV1Request


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build_name** | **str** | Name of the build. | 
**build_number** | **str** | Build number. | 
**rescan** | **bool** | Flag to rescan the build. | [optional] 
**project** | **str** | Project key the build belongs to. | [optional] 
**filters** | [**ScanBuildV1RequestFilters**](ScanBuildV1RequestFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v1_request import ScanBuildV1Request

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV1Request from a JSON string
scan_build_v1_request_instance = ScanBuildV1Request.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV1Request.to_json())

# convert the object into a dict
scan_build_v1_request_dict = scan_build_v1_request_instance.to_dict()
# create an instance of ScanBuildV1Request from a dict
scan_build_v1_request_from_dict = ScanBuildV1Request.from_dict(scan_build_v1_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


