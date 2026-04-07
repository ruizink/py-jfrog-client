# ChecksumReplicationStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_binary_existence_allowed** | **bool** | Whether checkBinaryExistence is allowed | [optional] 
**trust_until** | **str** | Date until which the trust expires (format varies) | [optional] 

## Example

```python
from jfrog_client.models.checksum_replication_status import ChecksumReplicationStatus

# TODO update the JSON string below
json = "{}"
# create an instance of ChecksumReplicationStatus from a JSON string
checksum_replication_status_instance = ChecksumReplicationStatus.from_json(json)
# print the JSON string representation of the object
print(ChecksumReplicationStatus.to_json())

# convert the object into a dict
checksum_replication_status_dict = checksum_replication_status_instance.to_dict()
# create an instance of ChecksumReplicationStatus from a dict
checksum_replication_status_from_dict = ChecksumReplicationStatus.from_dict(checksum_replication_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


