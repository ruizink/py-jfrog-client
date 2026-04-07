# MultipleReplicationConfigRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cron_exp** | **str** | Cron expression for scheduled replication | 
**enable_event_replication** | **bool** | Enable event-based replication | 
**replications** | [**List[ReplicationConfigRequest]**](ReplicationConfigRequest.md) |  | 

## Example

```python
from jfrog_client.models.multiple_replication_config_request import MultipleReplicationConfigRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MultipleReplicationConfigRequest from a JSON string
multiple_replication_config_request_instance = MultipleReplicationConfigRequest.from_json(json)
# print the JSON string representation of the object
print(MultipleReplicationConfigRequest.to_json())

# convert the object into a dict
multiple_replication_config_request_dict = multiple_replication_config_request_instance.to_dict()
# create an instance of MultipleReplicationConfigRequest from a dict
multiple_replication_config_request_from_dict = MultipleReplicationConfigRequest.from_dict(multiple_replication_config_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


