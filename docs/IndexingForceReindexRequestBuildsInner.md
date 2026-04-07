# IndexingForceReindexRequestBuildsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Build name. | 
**number** | **str** | Build number/version. | 
**build_repo** | **str** | Build repository name. | [optional] 
**project** | **str** | Project key. When set, the build repo is resolved from the project. | [optional] 

## Example

```python
from jfrog_client.models.indexing_force_reindex_request_builds_inner import IndexingForceReindexRequestBuildsInner

# TODO update the JSON string below
json = "{}"
# create an instance of IndexingForceReindexRequestBuildsInner from a JSON string
indexing_force_reindex_request_builds_inner_instance = IndexingForceReindexRequestBuildsInner.from_json(json)
# print the JSON string representation of the object
print(IndexingForceReindexRequestBuildsInner.to_json())

# convert the object into a dict
indexing_force_reindex_request_builds_inner_dict = indexing_force_reindex_request_builds_inner_instance.to_dict()
# create an instance of IndexingForceReindexRequestBuildsInner from a dict
indexing_force_reindex_request_builds_inner_from_dict = IndexingForceReindexRequestBuildsInner.from_dict(indexing_force_reindex_request_builds_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


