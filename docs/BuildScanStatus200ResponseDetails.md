# BuildScanStatus200ResponseDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sca** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**contextual_analysis** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**violations** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 

## Example

```python
from jfrog_client.models.build_scan_status200_response_details import BuildScanStatus200ResponseDetails

# TODO update the JSON string below
json = "{}"
# create an instance of BuildScanStatus200ResponseDetails from a JSON string
build_scan_status200_response_details_instance = BuildScanStatus200ResponseDetails.from_json(json)
# print the JSON string representation of the object
print(BuildScanStatus200ResponseDetails.to_json())

# convert the object into a dict
build_scan_status200_response_details_dict = build_scan_status200_response_details_instance.to_dict()
# create an instance of BuildScanStatus200ResponseDetails from a dict
build_scan_status200_response_details_from_dict = BuildScanStatus200ResponseDetails.from_dict(build_scan_status200_response_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


