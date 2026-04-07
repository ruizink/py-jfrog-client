# EnableCloudLogCollectionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Set to true to enable or false to disable cloud log collection | 

## Example

```python
from jfrog_client.models.enable_cloud_log_collection_request import EnableCloudLogCollectionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EnableCloudLogCollectionRequest from a JSON string
enable_cloud_log_collection_request_instance = EnableCloudLogCollectionRequest.from_json(json)
# print the JSON string representation of the object
print(EnableCloudLogCollectionRequest.to_json())

# convert the object into a dict
enable_cloud_log_collection_request_dict = enable_cloud_log_collection_request_instance.to_dict()
# create an instance of EnableCloudLogCollectionRequest from a dict
enable_cloud_log_collection_request_from_dict = EnableCloudLogCollectionRequest.from_dict(enable_cloud_log_collection_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


