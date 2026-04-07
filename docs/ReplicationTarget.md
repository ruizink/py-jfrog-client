# ReplicationTarget


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | Target URL | [optional] 
**repo_key** | **str** | Repository key | [optional] 
**status** | **str** | Status of the replication | [optional] 
**last_completed** | **datetime** | Last completion time in ISO8601 format | [optional] 

## Example

```python
from jfrog_client.models.replication_target import ReplicationTarget

# TODO update the JSON string below
json = "{}"
# create an instance of ReplicationTarget from a JSON string
replication_target_instance = ReplicationTarget.from_json(json)
# print the JSON string representation of the object
print(ReplicationTarget.to_json())

# convert the object into a dict
replication_target_dict = replication_target_instance.to_dict()
# create an instance of ReplicationTarget from a dict
replication_target_from_dict = ReplicationTarget.from_dict(replication_target_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


