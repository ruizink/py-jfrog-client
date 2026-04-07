# ArtifactsCompareBuildsRequest

Two builds to compare (see Compare Builds / build delta in Xray REST API documentation).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_artifactory_id** | **str** | Name of the first Artifactory instance | 
**source_build_name** | **str** | Name of the first build | 
**source_build_number** | **str** | Number of the first build | 
**target_artifactory_id** | **str** | Name of the second Artifactory instance | 
**target_build_name** | **str** | Name of the second build | 
**target_build_number** | **str** | Number of the second build | 

## Example

```python
from jfrog_client.models.artifacts_compare_builds_request import ArtifactsCompareBuildsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactsCompareBuildsRequest from a JSON string
artifacts_compare_builds_request_instance = ArtifactsCompareBuildsRequest.from_json(json)
# print the JSON string representation of the object
print(ArtifactsCompareBuildsRequest.to_json())

# convert the object into a dict
artifacts_compare_builds_request_dict = artifacts_compare_builds_request_instance.to_dict()
# create an instance of ArtifactsCompareBuildsRequest from a dict
artifacts_compare_builds_request_from_dict = ArtifactsCompareBuildsRequest.from_dict(artifacts_compare_builds_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


