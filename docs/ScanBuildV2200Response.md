# ScanBuildV2200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Status message about the scan progress. | [optional] 

## Example

```python
from jfrog_client.models.scan_build_v2200_response import ScanBuildV2200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScanBuildV2200Response from a JSON string
scan_build_v2200_response_instance = ScanBuildV2200Response.from_json(json)
# print the JSON string representation of the object
print(ScanBuildV2200Response.to_json())

# convert the object into a dict
scan_build_v2200_response_dict = scan_build_v2200_response_instance.to_dict()
# create an instance of ScanBuildV2200Response from a dict
scan_build_v2200_response_from_dict = ScanBuildV2200Response.from_dict(scan_build_v2200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


