# ReplicationEnableDisableRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include** | **List[str]** | Include patterns (target repository URLs) | [optional] 
**exclude** | **List[str]** | Exclude patterns (target repository URLs) | [optional] 

## Example

```python
from jfrog_client.models.replication_enable_disable_request import ReplicationEnableDisableRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReplicationEnableDisableRequest from a JSON string
replication_enable_disable_request_instance = ReplicationEnableDisableRequest.from_json(json)
# print the JSON string representation of the object
print(ReplicationEnableDisableRequest.to_json())

# convert the object into a dict
replication_enable_disable_request_dict = replication_enable_disable_request_instance.to_dict()
# create an instance of ReplicationEnableDisableRequest from a dict
replication_enable_disable_request_from_dict = ReplicationEnableDisableRequest.from_dict(replication_enable_disable_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


