# ChecksumReplicationConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_binary_existence_allowed** | **bool** | Allows the usage of the checkBinaryExistenceInFilestore flag in the Pull/Push Replication API on the source Artifactory | 
**days_to_trust** | **int** | The number of days for which the full checksum from source Artifactory is trusted. Useful for migration process. The value cannot be more than 30 days. The default is 0. | [optional] [default to 0]

## Example

```python
from jfrog_client.models.checksum_replication_config import ChecksumReplicationConfig

# TODO update the JSON string below
json = "{}"
# create an instance of ChecksumReplicationConfig from a JSON string
checksum_replication_config_instance = ChecksumReplicationConfig.from_json(json)
# print the JSON string representation of the object
print(ChecksumReplicationConfig.to_json())

# convert the object into a dict
checksum_replication_config_dict = checksum_replication_config_instance.to_dict()
# create an instance of ChecksumReplicationConfig from a dict
checksum_replication_config_from_dict = ChecksumReplicationConfig.from_dict(checksum_replication_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


