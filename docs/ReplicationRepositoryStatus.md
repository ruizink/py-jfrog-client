# ReplicationRepositoryStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | Status of the replication | [optional] 
**last_completed** | **datetime** | Last completion time in ISO8601 format | [optional] 

## Example

```python
from jfrog_client.models.replication_repository_status import ReplicationRepositoryStatus

# TODO update the JSON string below
json = "{}"
# create an instance of ReplicationRepositoryStatus from a JSON string
replication_repository_status_instance = ReplicationRepositoryStatus.from_json(json)
# print the JSON string representation of the object
print(ReplicationRepositoryStatus.to_json())

# convert the object into a dict
replication_repository_status_dict = replication_repository_status_instance.to_dict()
# create an instance of ReplicationRepositoryStatus from a dict
replication_repository_status_from_dict = ReplicationRepositoryStatus.from_dict(replication_repository_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


