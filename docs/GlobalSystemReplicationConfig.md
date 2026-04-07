# GlobalSystemReplicationConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_pull_replications** | **bool** | Whether pull replications are blocked | [optional] 
**block_push_replications** | **bool** | Whether push replications are blocked | [optional] 

## Example

```python
from jfrog_client.models.global_system_replication_config import GlobalSystemReplicationConfig

# TODO update the JSON string below
json = "{}"
# create an instance of GlobalSystemReplicationConfig from a JSON string
global_system_replication_config_instance = GlobalSystemReplicationConfig.from_json(json)
# print the JSON string representation of the object
print(GlobalSystemReplicationConfig.to_json())

# convert the object into a dict
global_system_replication_config_dict = global_system_replication_config_instance.to_dict()
# create an instance of GlobalSystemReplicationConfig from a dict
global_system_replication_config_from_dict = GlobalSystemReplicationConfig.from_dict(global_system_replication_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


