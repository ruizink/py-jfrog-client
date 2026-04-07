# ReindexMetadataServerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paths** | **List[str]** | List of repository keys or directory paths to re-index | 

## Example

```python
from jfrog_client.models.reindex_metadata_server_request import ReindexMetadataServerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReindexMetadataServerRequest from a JSON string
reindex_metadata_server_request_instance = ReindexMetadataServerRequest.from_json(json)
# print the JSON string representation of the object
print(ReindexMetadataServerRequest.to_json())

# convert the object into a dict
reindex_metadata_server_request_dict = reindex_metadata_server_request_instance.to_dict()
# create an instance of ReindexMetadataServerRequest from a dict
reindex_metadata_server_request_from_dict = ReindexMetadataServerRequest.from_dict(reindex_metadata_server_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


