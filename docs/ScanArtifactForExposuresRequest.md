# ScanArtifactForExposuresRequest

Identifies the artifact and specifies which exposure categories to scan. All three fields are required. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name. | 
**path** | **str** | Artifact path in the repository. | 
**categories** | [**ScanArtifactForExposuresRequestCategories**](ScanArtifactForExposuresRequestCategories.md) |  | 

## Example

```python
from jfrog_client.models.scan_artifact_for_exposures_request import ScanArtifactForExposuresRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ScanArtifactForExposuresRequest from a JSON string
scan_artifact_for_exposures_request_instance = ScanArtifactForExposuresRequest.from_json(json)
# print the JSON string representation of the object
print(ScanArtifactForExposuresRequest.to_json())

# convert the object into a dict
scan_artifact_for_exposures_request_dict = scan_artifact_for_exposures_request_instance.to_dict()
# create an instance of ScanArtifactForExposuresRequest from a dict
scan_artifact_for_exposures_request_from_dict = ScanArtifactForExposuresRequest.from_dict(scan_artifact_for_exposures_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


