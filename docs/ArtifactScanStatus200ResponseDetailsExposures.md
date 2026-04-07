# ArtifactScanStatus200ResponseDetailsExposures


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**time** | **str** |  | [optional] 
**categories** | [**ArtifactScanStatus200ResponseDetailsExposuresCategories**](ArtifactScanStatus200ResponseDetailsExposuresCategories.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response_details_exposures import ArtifactScanStatus200ResponseDetailsExposures

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200ResponseDetailsExposures from a JSON string
artifact_scan_status200_response_details_exposures_instance = ArtifactScanStatus200ResponseDetailsExposures.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200ResponseDetailsExposures.to_json())

# convert the object into a dict
artifact_scan_status200_response_details_exposures_dict = artifact_scan_status200_response_details_exposures_instance.to_dict()
# create an instance of ArtifactScanStatus200ResponseDetailsExposures from a dict
artifact_scan_status200_response_details_exposures_from_dict = ArtifactScanStatus200ResponseDetailsExposures.from_dict(artifact_scan_status200_response_details_exposures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


