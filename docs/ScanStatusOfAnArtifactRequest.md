# ScanStatusOfAnArtifactRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name. | 
**path** | **str** | Artifact path in the repository. | 

## Example

```python
from jfrog_client.models.scan_status_of_an_artifact_request import ScanStatusOfAnArtifactRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ScanStatusOfAnArtifactRequest from a JSON string
scan_status_of_an_artifact_request_instance = ScanStatusOfAnArtifactRequest.from_json(json)
# print the JSON string representation of the object
print(ScanStatusOfAnArtifactRequest.to_json())

# convert the object into a dict
scan_status_of_an_artifact_request_dict = scan_status_of_an_artifact_request_instance.to_dict()
# create an instance of ScanStatusOfAnArtifactRequest from a dict
scan_status_of_an_artifact_request_from_dict = ScanStatusOfAnArtifactRequest.from_dict(scan_status_of_an_artifact_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


