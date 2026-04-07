# ArtifactsArtifactScanStatusRequest

Request body for looking up the scan status of a specific artifact.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name containing the artifact. | 
**path** | **str** | Path to the artifact in the repository. | 

## Example

```python
from jfrog_client.models.artifacts_artifact_scan_status_request import ArtifactsArtifactScanStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsArtifactScanStatusRequest from a JSON string
artifacts_artifact_scan_status_request_instance = ArtifactsArtifactScanStatusRequest.from_json(json)
# print the JSON string representation of the object
print(ArtifactsArtifactScanStatusRequest.to_json())

# convert the object into a dict
artifacts_artifact_scan_status_request_dict = artifacts_artifact_scan_status_request_instance.to_dict()
# create an instance of ArtifactsArtifactScanStatusRequest from a dict
artifacts_artifact_scan_status_request_from_dict = ArtifactsArtifactScanStatusRequest.from_dict(artifacts_artifact_scan_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


