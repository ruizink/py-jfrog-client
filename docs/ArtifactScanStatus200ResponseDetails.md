# ArtifactScanStatus200ResponseDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sca** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**contextual_analysis** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**exposures** | [**ArtifactScanStatus200ResponseDetailsExposures**](ArtifactScanStatus200ResponseDetailsExposures.md) |  | [optional] 
**violations** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response_details import ArtifactScanStatus200ResponseDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200ResponseDetails from a JSON string
artifact_scan_status200_response_details_instance = ArtifactScanStatus200ResponseDetails.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200ResponseDetails.to_json())

# convert the object into a dict
artifact_scan_status200_response_details_dict = artifact_scan_status200_response_details_instance.to_dict()
# create an instance of ArtifactScanStatus200ResponseDetails from a dict
artifact_scan_status200_response_details_from_dict = ArtifactScanStatus200ResponseDetails.from_dict(artifact_scan_status200_response_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


