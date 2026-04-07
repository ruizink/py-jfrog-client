# CreateDebianSnapshotRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **str** | The snapshot tag | 
**target_repo** | **str** | The target repository | 
**distribution** | **str** | The distribution name | 

## Example

```python
from jfrog_client.models.create_debian_snapshot_request import CreateDebianSnapshotRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDebianSnapshotRequest from a JSON string
create_debian_snapshot_request_instance = CreateDebianSnapshotRequest.from_json(json)
# print the JSON string representation of the object
print(CreateDebianSnapshotRequest.to_json())

# convert the object into a dict
create_debian_snapshot_request_dict = create_debian_snapshot_request_instance.to_dict()
# create an instance of CreateDebianSnapshotRequest from a dict
create_debian_snapshot_request_from_dict = CreateDebianSnapshotRequest.from_dict(create_debian_snapshot_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


