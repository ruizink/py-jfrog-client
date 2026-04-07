# ArtifactScanStatus200ResponseDetailsSca


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**time** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response_details_sca import ArtifactScanStatus200ResponseDetailsSca

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200ResponseDetailsSca from a JSON string
artifact_scan_status200_response_details_sca_instance = ArtifactScanStatus200ResponseDetailsSca.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200ResponseDetailsSca.to_json())

# convert the object into a dict
artifact_scan_status200_response_details_sca_dict = artifact_scan_status200_response_details_sca_instance.to_dict()
# create an instance of ArtifactScanStatus200ResponseDetailsSca from a dict
artifact_scan_status200_response_details_sca_from_dict = ArtifactScanStatus200ResponseDetailsSca.from_dict(artifact_scan_status200_response_details_sca_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


