# BuildScanStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**details** | [**BuildScanStatus200ResponseDetails**](BuildScanStatus200ResponseDetails.md) |  | [optional] 

## Example

```python
from jfrog_client.models.build_scan_status200_response import BuildScanStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of BuildScanStatus200Response from a JSON string
build_scan_status200_response_instance = BuildScanStatus200Response.from_json(json)
# print the JSON string representation of the object
print(BuildScanStatus200Response.to_json())

# convert the object into a dict
build_scan_status200_response_dict = build_scan_status200_response_instance.to_dict()
# create an instance of BuildScanStatus200Response from a dict
build_scan_status200_response_from_dict = BuildScanStatus200Response.from_dict(build_scan_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


