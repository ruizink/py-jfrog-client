# GetRepositoryReplicationConfiguration200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | URL of the remote repository (required for local replication) | [optional] 
**socket_timeout_millis** | **int** | Socket timeout in milliseconds | [optional] 
**username** | **str** | Username for authentication | [optional] 
**password** | **str** | Password for authentication | [optional] 
**enable_event_replication** | **bool** | Enable event-based replication (refers to both push and pull replication) | [optional] 
**enabled** | **bool** | Whether replication is enabled | [optional] 
**cron_exp** | **str** | Cron expression for scheduled replication | [optional] 
**sync_deletes** | **bool** | Whether to sync deletions (default false) | [optional] 
**sync_properties** | **bool** | Whether to sync properties (default true) | [optional] 
**sync_statistics** | **bool** | Whether to sync statistics | [optional] 
**repo_key** | **str** | Repository key (returned in response, not required in request) | [optional] [readonly] 
**replication_key** | **str** | Replication key (returned in response, not required in request) | [optional] [readonly] 
**include_path_prefix_pattern** | **str** | Include path prefix pattern (added in Artifactory 7.24.4) | [optional] 
**exclude_path_prefix_pattern** | **str** | Exclude path prefix pattern (added in Artifactory 7.24.4) | [optional] 
**proxy** | **str** | Proxy ID | [optional] 
**disable_proxy** | **bool** | When true, disables proxy usage for this replication | [optional] 
**check_binary_existence_in_filestore** | **bool** | When true, enables distributed checksum storage. Requires Enterprise+ license. | [optional] 

## Example

```python
from jfrog_client.models.get_repository_replication_configuration200_response import GetRepositoryReplicationConfiguration200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetRepositoryReplicationConfiguration200Response from a JSON string
get_repository_replication_configuration200_response_instance = GetRepositoryReplicationConfiguration200Response.from_json(json)
# print the JSON string representation of the object
print(GetRepositoryReplicationConfiguration200Response.to_json())

# convert the object into a dict
get_repository_replication_configuration200_response_dict = get_repository_replication_configuration200_response_instance.to_dict()
# create an instance of GetRepositoryReplicationConfiguration200Response from a dict
get_repository_replication_configuration200_response_from_dict = GetRepositoryReplicationConfiguration200Response.from_dict(get_repository_replication_configuration200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


