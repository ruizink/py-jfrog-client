# ArtifactScanStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall** | [**ArtifactScanStatus200ResponseOverall**](ArtifactScanStatus200ResponseOverall.md) |  | [optional] 
**details** | [**ArtifactScanStatus200ResponseDetails**](ArtifactScanStatus200ResponseDetails.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response import ArtifactScanStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200Response from a JSON string
artifact_scan_status200_response_instance = ArtifactScanStatus200Response.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200Response.to_json())

# convert the object into a dict
artifact_scan_status200_response_dict = artifact_scan_status200_response_instance.to_dict()
# create an instance of ArtifactScanStatus200Response from a dict
artifact_scan_status200_response_from_dict = ArtifactScanStatus200Response.from_dict(artifact_scan_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


