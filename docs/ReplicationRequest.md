# ReplicationRequest

Request object for executing immediate replication. All fields are optional for pull replication; url, username, password are needed only for push replication.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | URL of the repository at the remote Artifactory instance. Used only by push replication. | [optional] 
**username** | **str** | Username at the remote Artifactory instance. Used only by push replication. | [optional] 
**password** | **str** | Password at the remote Artifactory instance. Used only by push replication. | [optional] 
**proxy** | **str** | Name of the proxy (if used) at the remote Artifactory instance. Used only by push replication. | [optional] 
**disable_proxy** | **bool** | When true, disables proxy usage for this replication | [optional] 
**properties** | **bool** | When true, properties of replicated artifacts will be synchronized also (default true) | [optional] [default to True]
**delete** | **bool** | When true, items that were deleted remotely will also be deleted locally (including properties metadata) (default false) | [optional] [default to False]
**include_path_prefix_pattern** | **str** | Include path prefix pattern for filtering artifacts to replicate | [optional] 
**exclude_path_prefix_pattern** | **str** | Exclude path prefix pattern for filtering artifacts to replicate | [optional] 
**check_binary_existence_in_filestore** | **bool** | When true, enables distributed checksum storage. Requires Enterprise+ license. | [optional] 

## Example

```python
from jfrog_client.models.replication_request import ReplicationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReplicationRequest from a JSON string
replication_request_instance = ReplicationRequest.from_json(json)
# print the JSON string representation of the object
print(ReplicationRequest.to_json())

# convert the object into a dict
replication_request_dict = replication_request_instance.to_dict()
# create an instance of ReplicationRequest from a dict
replication_request_from_dict = ReplicationRequest.from_dict(replication_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


