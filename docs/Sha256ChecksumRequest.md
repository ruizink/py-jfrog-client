# Sha256ChecksumRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo_key** | **str** | Repository key | 
**path** | **str** | Path to the artifact or folder | 

## Example

```python
from jfrog_client.models.sha256_checksum_request import Sha256ChecksumRequest

# TODO update the JSON string below
json = "{}"
# create an instance of Sha256ChecksumRequest from a JSON string
sha256_checksum_request_instance = Sha256ChecksumRequest.from_json(json)
# print the JSON string representation of the object
print(Sha256ChecksumRequest.to_json())

# convert the object into a dict
sha256_checksum_request_dict = sha256_checksum_request_instance.to_dict()
# create an instance of Sha256ChecksumRequest from a dict
sha256_checksum_request_from_dict = Sha256ChecksumRequest.from_dict(sha256_checksum_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


