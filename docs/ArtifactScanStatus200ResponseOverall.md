# ArtifactScanStatus200ResponseOverall


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | Overall scan status. Values: NOT_SUPPORTED, NOT_SCANNED, PENDING, SCANNING, DONE, PARTIAL, FAILED. | [optional] 
**time** | **str** | Timestamp (RFC 3339). | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response_overall import ArtifactScanStatus200ResponseOverall

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200ResponseOverall from a JSON string
artifact_scan_status200_response_overall_instance = ArtifactScanStatus200ResponseOverall.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200ResponseOverall.to_json())

# convert the object into a dict
artifact_scan_status200_response_overall_dict = artifact_scan_status200_response_overall_instance.to_dict()
# create an instance of ArtifactScanStatus200ResponseOverall from a dict
artifact_scan_status200_response_overall_from_dict = ArtifactScanStatus200ResponseOverall.from_dict(artifact_scan_status200_response_overall_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


