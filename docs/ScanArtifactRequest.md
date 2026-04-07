# ScanArtifactRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** | The component ID of the artifact to scan (e.g. docker://image_name:image_tag). | 

## Example

```python
from jfrog_client.models.scan_artifact_request import ScanArtifactRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ScanArtifactRequest from a JSON string
scan_artifact_request_instance = ScanArtifactRequest.from_json(json)
# print the JSON string representation of the object
print(ScanArtifactRequest.to_json())

# convert the object into a dict
scan_artifact_request_dict = scan_artifact_request_instance.to_dict()
# create an instance of ScanArtifactRequest from a dict
scan_artifact_request_from_dict = ScanArtifactRequest.from_dict(scan_artifact_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


