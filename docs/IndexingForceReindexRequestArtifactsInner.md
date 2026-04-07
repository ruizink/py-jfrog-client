# IndexingForceReindexRequestArtifactsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository** | **str** | Repository name. | [optional] 
**path** | **str** | Artifact path within the repository. | [optional] 
**sha256** | **str** | SHA256 checksum of the artifact. | [optional] 

## Example

```python
from jfrog_client.models.indexing_force_reindex_request_artifacts_inner import IndexingForceReindexRequestArtifactsInner

# TODO update the JSON string below
json = "{}"
# create an instance of IndexingForceReindexRequestArtifactsInner from a JSON string
indexing_force_reindex_request_artifacts_inner_instance = IndexingForceReindexRequestArtifactsInner.from_json(json)
# print the JSON string representation of the object
print(IndexingForceReindexRequestArtifactsInner.to_json())

# convert the object into a dict
indexing_force_reindex_request_artifacts_inner_dict = indexing_force_reindex_request_artifacts_inner_instance.to_dict()
# create an instance of IndexingForceReindexRequestArtifactsInner from a dict
indexing_force_reindex_request_artifacts_inner_from_dict = IndexingForceReindexRequestArtifactsInner.from_dict(indexing_force_reindex_request_artifacts_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


