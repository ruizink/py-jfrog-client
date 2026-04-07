# ScanArtifactForContextualAnalysisRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Artifact mode: repository name containing the artifact. | [optional] 
**path** | **str** | Artifact mode: path to the artifact in the repository. | [optional] 
**component_id** | **str** | Artifact mode: component identifier (e.g. gav://log4j:log4j:1.2.17). | [optional] 
**project** | **str** | Project key to scope the request (optional, both modes). | [optional] 
**build_name** | **str** | Aggregate mode: build name. | [optional] 
**build_number** | **str** | Aggregate mode: build number. | [optional] 
**release_bundle_name** | **str** | Aggregate mode: Release Bundle V1 name. | [optional] 
**release_bundle_version** | **str** | Aggregate mode: Release Bundle V1 version. | [optional] 
**release_bundle_v2_name** | **str** | Aggregate mode: Release Bundle V2 name. | [optional] 
**release_bundle_v2_version** | **str** | Aggregate mode: Release Bundle V2 version. | [optional] 

## Example

```python
from jfrog_client.models.scan_artifact_for_contextual_analysis_request import ScanArtifactForContextualAnalysisRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ScanArtifactForContextualAnalysisRequest from a JSON string
scan_artifact_for_contextual_analysis_request_instance = ScanArtifactForContextualAnalysisRequest.from_json(json)
# print the JSON string representation of the object
print(ScanArtifactForContextualAnalysisRequest.to_json())

# convert the object into a dict
scan_artifact_for_contextual_analysis_request_dict = scan_artifact_for_contextual_analysis_request_instance.to_dict()
# create an instance of ScanArtifactForContextualAnalysisRequest from a dict
scan_artifact_for_contextual_analysis_request_from_dict = ScanArtifactForContextualAnalysisRequest.from_dict(scan_artifact_for_contextual_analysis_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


