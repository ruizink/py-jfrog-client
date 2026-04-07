# ForceReindex200ResponseSentToReindex

Items successfully queued for reindexing.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List[ForceReindex200ResponseSentToReindexArtifactsInner]**](ForceReindex200ResponseSentToReindexArtifactsInner.md) |  | [optional] 
**builds** | [**List[ForceReindex200ResponseSentToReindexBuildsInner]**](ForceReindex200ResponseSentToReindexBuildsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.force_reindex200_response_sent_to_reindex import ForceReindex200ResponseSentToReindex

# TODO update the JSON string below
json = "{}"
# create an instance of ForceReindex200ResponseSentToReindex from a JSON string
force_reindex200_response_sent_to_reindex_instance = ForceReindex200ResponseSentToReindex.from_json(json)
# print the JSON string representation of the object
print(ForceReindex200ResponseSentToReindex.to_json())

# convert the object into a dict
force_reindex200_response_sent_to_reindex_dict = force_reindex200_response_sent_to_reindex_instance.to_dict()
# create an instance of ForceReindex200ResponseSentToReindex from a dict
force_reindex200_response_sent_to_reindex_from_dict = ForceReindex200ResponseSentToReindex.from_dict(force_reindex200_response_sent_to_reindex_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


