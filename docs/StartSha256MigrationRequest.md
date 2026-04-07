# StartSha256MigrationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_threshold** | **int** | Batch threshold for migration | [optional] [default to 10]
**query_limit** | **int** | Query limit for migration | [optional] [default to 100]
**wait_for_cluster_sleep_interval_millis** | **int** | Wait for cluster sleep interval in milliseconds | [optional] [default to 5000]
**sleep_interval_millis** | **int** | Sleep interval in milliseconds | [optional] [default to 5000]
**force_run_on_node_id** | **str** | Force run on specific node ID | [optional] 

## Example

```python
from jfrog_client.models.start_sha256_migration_request import StartSha256MigrationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StartSha256MigrationRequest from a JSON string
start_sha256_migration_request_instance = StartSha256MigrationRequest.from_json(json)
# print the JSON string representation of the object
print(StartSha256MigrationRequest.to_json())

# convert the object into a dict
start_sha256_migration_request_dict = start_sha256_migration_request_instance.to_dict()
# create an instance of StartSha256MigrationRequest from a dict
start_sha256_migration_request_from_dict = StartSha256MigrationRequest.from_dict(start_sha256_migration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


