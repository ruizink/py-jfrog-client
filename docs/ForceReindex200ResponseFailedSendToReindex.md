# ForceReindex200ResponseFailedSendToReindex

Items that failed to be queued. Only present if there were failures. Each item includes an error field. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List[ForceReindex200ResponseFailedSendToReindexArtifactsInner]**](ForceReindex200ResponseFailedSendToReindexArtifactsInner.md) |  | [optional] 
**builds** | [**List[ForceReindex200ResponseFailedSendToReindexBuildsInner]**](ForceReindex200ResponseFailedSendToReindexBuildsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.force_reindex200_response_failed_send_to_reindex import ForceReindex200ResponseFailedSendToReindex

# TODO update the JSON string below
json = "{}"
# create an instance of ForceReindex200ResponseFailedSendToReindex from a JSON string
force_reindex200_response_failed_send_to_reindex_instance = ForceReindex200ResponseFailedSendToReindex.from_json(json)
# print the JSON string representation of the object
print(ForceReindex200ResponseFailedSendToReindex.to_json())

# convert the object into a dict
force_reindex200_response_failed_send_to_reindex_dict = force_reindex200_response_failed_send_to_reindex_instance.to_dict()
# create an instance of ForceReindex200ResponseFailedSendToReindex from a dict
force_reindex200_response_failed_send_to_reindex_from_dict = ForceReindex200ResponseFailedSendToReindex.from_dict(force_reindex200_response_failed_send_to_reindex_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


