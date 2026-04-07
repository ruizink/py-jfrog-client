# IndexingForceReindexRequest

Specifies which artifacts and/or builds to reindex. Provide at least one artifact or build. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifactory_id** | **str** | Optional Artifactory instance ID. If omitted, the configured instance is used automatically.  | [optional] 
**artifacts** | [**List[IndexingForceReindexRequestArtifactsInner]**](IndexingForceReindexRequestArtifactsInner.md) | List of artifacts to reindex. | [optional] 
**builds** | [**List[IndexingForceReindexRequestBuildsInner]**](IndexingForceReindexRequestBuildsInner.md) | List of builds to reindex. | [optional] 
**is_non_indexed_repo_allowed** | **bool** | If true, allows reindexing artifacts from non-indexed repositories. | [optional] 

## Example

```python
from jfrog_client.models.indexing_force_reindex_request import IndexingForceReindexRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IndexingForceReindexRequest from a JSON string
indexing_force_reindex_request_instance = IndexingForceReindexRequest.from_json(json)
# print the JSON string representation of the object
print(IndexingForceReindexRequest.to_json())

# convert the object into a dict
indexing_force_reindex_request_dict = indexing_force_reindex_request_instance.to_dict()
# create an instance of IndexingForceReindexRequest from a dict
indexing_force_reindex_request_from_dict = IndexingForceReindexRequest.from_dict(indexing_force_reindex_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


